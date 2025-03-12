using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;
using WebApplication.Data;
using Microsoft.AspNetCore.Html;
using System.Text.Encodings.Web;
using WebApplication.Models;

namespace WebApplication.Controllers
{
    public class Xss2Controller : Controller
    {
        private readonly ApplicationDbContext _context;

        public Xss2Controller(ApplicationDbContext context)
        {
            _context = context;
        }

        // Page d'accueil du laboratoire
        public IActionResult Index()
        {
            return View();
        }

        #region Reflected XSS

        // VULNÉRABLE: XSS Reflété sans encodage
        [HttpGet]
        public IActionResult ReflectedVulnerable(string userName)
        {
            // Stocke le nom d'utilisateur non encodé dans ViewBag
            ViewBag.UserName = userName;
            ViewBag.MethodeUtilisee = "XSS Reflété - Vulnérable (sans encodage)";
            return View("ReflectedXss");
        }

        // SÉCURISÉ: XSS Reflété avec encodage HTML
        [HttpGet]
        public IActionResult ReflectedSecured(string userName)
        {
            // Utilise l'encodeur HTML pour sécuriser l'entrée
            ViewBag.UserName = HtmlEncoder.Default.Encode(userName);
            ViewBag.MethodeUtilisee = "XSS Reflété - Sécurisé (avec encodage HTML)";
            return View("ReflectedXss");
        }

        #endregion

        #region Stored XSS

        // VULNÉRABLE: Enregistrement d'un commentaire sans encodage
        [HttpPost]
        public IActionResult StoreCommentVulnerable(string author, string content)
        {
            var comment = new Comment
            {
                Id = Guid.NewGuid(),
                Author = author,
                Content = content, // Stockage sans encodage
                CreatedAt = DateTime.Now
            };

            _context.Set<Comment>().Add(comment);
            _context.SaveChanges();

            return RedirectToAction("ViewCommentsVulnerable");
        }

        // VULNÉRABLE: Affichage des commentaires stockés sans encodage
        [HttpGet]
        public IActionResult ViewCommentsVulnerable()
        {
            var comments = _context.Set<Comment>().OrderByDescending(c => c.CreatedAt).ToList();
            ViewBag.MethodeUtilisee = "XSS Stocké - Vulnérable (sans encodage)";
            ViewBag.IsSecured = false;
            return View("StoredXss", comments);
        }

        // SÉCURISÉ: Enregistrement d'un commentaire avec encodage
        [HttpPost]
        public IActionResult StoreCommentSecured(string author, string content)
        {
            var comment = new Comment
            {
                Id = Guid.NewGuid(),
                Author = HtmlEncoder.Default.Encode(author),
                Content = HtmlEncoder.Default.Encode(content), // Encodage avant stockage
                CreatedAt = DateTime.Now
            };

            _context.Set<Comment>().Add(comment);
            _context.SaveChanges();

            return RedirectToAction("ViewCommentsSecured");
        }

        // SÉCURISÉ: Affichage des commentaires avec encodage (doublement sécurisé)
        [HttpGet]
        public IActionResult ViewCommentsSecured()
        {
            var comments = _context.Set<Comment>().OrderByDescending(c => c.CreatedAt).ToList();
            ViewBag.MethodeUtilisee = "XSS Stocké - Sécurisé (avec encodage)";
            ViewBag.IsSecured = true;
            return View("StoredXss", comments);
        }

        #endregion

        #region DOM-based XSS

        // Vue pour démontrer le XSS basé sur le DOM
        public IActionResult DomBasedXss()
        {
            return View();
        }

        #endregion

        #region Unsafe HTML

        // VULNÉRABLE: Génération de contenu HTML dynamique non sécurisé
        [HttpGet]
        public IActionResult UnsafeHtmlVulnerable(string htmlContent)
        {
            // Utilisation de HtmlString pour éviter l'encodage automatique
            ViewBag.HtmlContent = new HtmlString(htmlContent);
            ViewBag.MethodeUtilisee = "Contenu HTML - Vulnérable (sans validation)";
            return View("UnsafeHtml");
        }

        // SÉCURISÉ: Purification HTML avec une bibliothèque tierce (HtmlSanitizer)
        [HttpGet]
        public IActionResult UnsafeHtmlSecured(string htmlContent)
        {
            // Simuler l'utilisation d'une bibliothèque de purification HTML
            // Dans un vrai scénario, vous utiliseriez HtmlSanitizer ou une bibliothèque similaire
            
            // Exemple simulé de purification (à remplacer par une vraie implémentation)
            string sanitizedHtml = SimulateSanitizer(htmlContent);
            
            ViewBag.HtmlContent = new HtmlString(sanitizedHtml);
            ViewBag.MethodeUtilisee = "Contenu HTML - Sécurisé (avec purification)";
            return View("UnsafeHtml");
        }
        
        // Simulation d'un sanitizer HTML (à des fins de démonstration uniquement)
        private string SimulateSanitizer(string html)
        {
            if (string.IsNullOrEmpty(html))
                return string.Empty;
                
            // Cette implémentation est simplifiée et incomplète
            // Utilisez une bibliothèque comme HtmlSanitizer dans un vrai scénario
            
            // Supprime les scripts
            html = System.Text.RegularExpressions.Regex.Replace(html, 
                @"<script[^>]*>.*?</script>", "", 
                System.Text.RegularExpressions.RegexOptions.IgnoreCase | 
                System.Text.RegularExpressions.RegexOptions.Singleline);
                
            // Supprime les événements JavaScript inline
            html = System.Text.RegularExpressions.Regex.Replace(html, 
                @"on\w+\s*=\s*"".*?""", "", 
                System.Text.RegularExpressions.RegexOptions.IgnoreCase | 
                System.Text.RegularExpressions.RegexOptions.Singleline);
                
            // Supprime les balises <iframe>, <object>, etc.
            html = System.Text.RegularExpressions.Regex.Replace(html, 
                @"<(iframe|object|embed|frame|frameset|applet|meta|link)[^>]*>.*?</\1>", "", 
                System.Text.RegularExpressions.RegexOptions.IgnoreCase | 
                System.Text.RegularExpressions.RegexOptions.Singleline);
                
            return html;
        }

        #endregion

        #region CSP Demonstration

        // Démonstration de Content Security Policy
        public IActionResult CspDemo()
        {
            // Le middleware CSP est configuré dans Program.cs
            return View();
        }

        #endregion
    }
}