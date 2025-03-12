// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
document.querySelectorAll('.api-button').forEach(item => {
    item.addEventListener('click', event => {
        // data-http-method => jquery => data("httpMethod")
        callApi($(item).data("host"), $(item).data("uri"), $(item).data("httpMethod"))
    })
})

function callApi(host, uri, methodName) {
    const errorSpan = document.getElementById('error');
    const successSpan = document.getElementById('success');

    fetch(`${host}${uri}`,
        {
            method: methodName
        }).then(response => {
        if (response.ok) {
            response.text().then(text => {
                successSpan.innerText = text;
                errorSpan.innerText = 'Les erreurs, si présentes, s\'afficheront ici.'
            });
        }
    })
        .catch(() => {
            errorSpan.innerText = 'Des erreurs se sont produites. Ouvrez la console développeur (F12) pour les observer.'
            successSpan.innerText = 'Les résultats de la requête, si réalisée avec succès, s\'afficheront ici.';
        });
}