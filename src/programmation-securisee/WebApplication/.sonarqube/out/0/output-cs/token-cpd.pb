Ä	
sD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\IdentityHostingStartup.cs
[

 
assembly

 	
:

	 

HostingStartup

 
(

 
typeof

  
(

  !
WebApplication

! /
.

/ 0
Areas

0 5
.

5 6
Identity

6 >
.

> ?"
IdentityHostingStartup

? U
)

U V
)

V W
]

W X
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{ 	
builder 
. 
ConfigureServices %
(% &
(& '
context' .
,. /
services0 8
)8 9
=>: <
{= >
} 
) 
; 
} 	
} 
} ◊
~D:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
public		 

class		 
AccessDeniedModel		 "
:		# $
	PageModel		% .
{

 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ≈
~D:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -
IdentityUser- 9
>9 :
userManager; F
)F G
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
userId; A
,A B
stringC I
codeJ N
)N O
{ 	
if 
( 
userId 
== 
null 
|| !
code" &
==' )
null* .
). /
{ 
return 
RedirectToPage %
(% &
$str& .
). /
;/ 0
}   
var"" 
user"" 
="" 
await"" 
_userManager"" )
."") *
FindByIdAsync""* 7
(""7 8
userId""8 >
)""> ?
;""? @
if## 
(## 
user## 
==## 
null## 
)## 
{$$ 
return%% 
NotFound%% 
(%%  
$"%%  "
$str%%" ?
{%%? @
userId%%@ F
}%%F G
$str%%G I
"%%I J
)%%J K
;%%K L
}&& 
code(( 
=(( 
Encoding(( 
.(( 
UTF8((  
.((  !
	GetString((! *
(((* +
WebEncoders((+ 6
.((6 7
Base64UrlDecode((7 F
(((F G
code((G K
)((K L
)((L M
;((M N
var)) 
result)) 
=)) 
await)) 
_userManager)) +
.))+ ,
ConfirmEmailAsync)), =
())= >
user))> B
,))B C
code))D H
)))H I
;))I J
StatusMessage** 
=** 
result** "
.**" #
	Succeeded**# ,
?**- .
$str**/ U
:**V W
$str**X v
;**v w
return++ 
Page++ 
(++ 
)++ 
;++ 
},, 	
}-- 
}.. ç$
ÑD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\ConfirmEmailChange.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class #
ConfirmEmailChangeModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public #
ConfirmEmailChangeModel &
(& '
UserManager' 2
<2 3
IdentityUser3 ?
>? @
userManagerA L
,L M
SignInManagerN [
<[ \
IdentityUser\ h
>h i
signInManagerj w
)w x
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
userId; A
,A B
stringC I
emailJ O
,O P
stringQ W
codeX \
)\ ]
{ 	
if 
( 
userId 
== 
null 
|| !
email" '
==( *
null+ /
||0 2
code3 7
==8 :
null; ?
)? @
{   
return!! 
RedirectToPage!! %
(!!% &
$str!!& .
)!!. /
;!!/ 0
}"" 
var$$ 
user$$ 
=$$ 
await$$ 
_userManager$$ )
.$$) *
FindByIdAsync$$* 7
($$7 8
userId$$8 >
)$$> ?
;$$? @
if%% 
(%% 
user%% 
==%% 
null%% 
)%% 
{&& 
return'' 
NotFound'' 
(''  
$"''  "
$str''" ?
{''? @
userId''@ F
}''F G
$str''G I
"''I J
)''J K
;''K L
}(( 
code** 
=** 
Encoding** 
.** 
UTF8**  
.**  !
	GetString**! *
(*** +
WebEncoders**+ 6
.**6 7
Base64UrlDecode**7 F
(**F G
code**G K
)**K L
)**L M
;**M N
var++ 
result++ 
=++ 
await++ 
_userManager++ +
.+++ ,
ChangeEmailAsync++, <
(++< =
user++= A
,++A B
email++C H
,++H I
code++J N
)++N O
;++O P
if,, 
(,, 
!,, 
result,, 
.,, 
	Succeeded,, !
),,! "
{-- 
StatusMessage.. 
=.. 
$str..  7
;..7 8
return// 
Page// 
(// 
)// 
;// 
}00 
var44 
setUserNameResult44 !
=44" #
await44$ )
_userManager44* 6
.446 7
SetUserNameAsync447 G
(44G H
user44H L
,44L M
email44N S
)44S T
;44T U
if55 
(55 
!55 
setUserNameResult55 "
.55" #
	Succeeded55# ,
)55, -
{66 
StatusMessage77 
=77 
$str77  ;
;77; <
return88 
Page88 
(88 
)88 
;88 
}99 
await;; 
_signInManager;;  
.;;  !
RefreshSignInAsync;;! 3
(;;3 4
user;;4 8
);;8 9
;;;9 :
StatusMessage<< 
=<< 
$str<< I
;<<I J
return== 
Page== 
(== 
)== 
;== 
}>> 	
}?? 
}@@ ét
D:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\ExternalLogin.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 
ExternalLoginModel #
:$ %
	PageModel& /
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private 
readonly 
ILogger  
<  !
ExternalLoginModel! 3
>3 4
_logger5 <
;< =
public 
ExternalLoginModel !
(! "
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
ExternalLoginModel &
>& '
logger( .
,. /
IEmailSender 
emailSender $
)$ %
{   	
_signInManager!! 
=!! 
signInManager!! *
;!!* +
_userManager"" 
="" 
userManager"" &
;""& '
_logger## 
=## 
logger## 
;## 
_emailSender$$ 
=$$ 
emailSender$$ &
;$$& '
}%% 	
['' 	
BindProperty''	 
]'' 
public(( 

InputModel(( 
Input(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public** 
string** 
ProviderDisplayName** )
{*** +
get**, /
;**/ 0
set**1 4
;**4 5
}**6 7
public,, 
string,, 
	ReturnUrl,, 
{,,  !
get,," %
;,,% &
set,,' *
;,,* +
},,, -
[.. 	
TempData..	 
].. 
public// 
string// 
ErrorMessage// "
{//# $
get//% (
;//( )
set//* -
;//- .
}/// 0
public11 
class11 

InputModel11 
{22 	
[33 
Required33 
]33 
[44 
EmailAddress44 
]44 
public55 
string55 
Email55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
}66 	
public88 
IActionResult88 

OnGetAsync88 '
(88' (
)88( )
{99 	
return:: 
RedirectToPage:: !
(::! "
$str::" +
)::+ ,
;::, -
};; 	
public== 
IActionResult== 
OnPost== #
(==# $
string==$ *
provider==+ 3
,==3 4
string==5 ;
	returnUrl==< E
===F G
null==H L
)==L M
{>> 	
var@@ 
redirectUrl@@ 
=@@ 
Url@@ !
.@@! "
Page@@" &
(@@& '
$str@@' 8
,@@8 9
pageHandler@@: E
:@@E F
$str@@G Q
,@@Q R
values@@S Y
:@@Y Z
new@@[ ^
{@@_ `
	returnUrl@@a j
}@@k l
)@@l m
;@@m n
varAA 

propertiesAA 
=AA 
_signInManagerAA +
.AA+ ,5
)ConfigureExternalAuthenticationPropertiesAA, U
(AAU V
providerAAV ^
,AA^ _
redirectUrlAA` k
)AAk l
;AAl m
returnBB 
newBB 
ChallengeResultBB &
(BB& '
providerBB' /
,BB/ 0

propertiesBB1 ;
)BB; <
;BB< =
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
IActionResultEE '
>EE' (
OnGetCallbackAsyncEE) ;
(EE; <
stringEE< B
	returnUrlEEC L
=EEM N
nullEEO S
,EES T
stringEEU [
remoteErrorEE\ g
=EEh i
nullEEj n
)EEn o
{FF 	
	returnUrlGG 
=GG 
	returnUrlGG !
??GG" $
UrlGG% (
.GG( )
ContentGG) 0
(GG0 1
$strGG1 5
)GG5 6
;GG6 7
ifHH 
(HH 
remoteErrorHH 
!=HH 
nullHH #
)HH# $
{II 
ErrorMessageJJ 
=JJ 
$"JJ !
$strJJ! ?
{JJ? @
remoteErrorJJ@ K
}JJK L
"JJL M
;JJM N
returnKK 
RedirectToPageKK %
(KK% &
$strKK& /
,KK/ 0
newKK1 4
{KK5 6
	ReturnUrlKK6 ?
=KK@ A
	returnUrlKKB K
}KKL M
)KKM N
;KKN O
}LL 
varMM 
infoMM 
=MM 
awaitMM 
_signInManagerMM +
.MM+ ,%
GetExternalLoginInfoAsyncMM, E
(MME F
)MMF G
;MMG H
ifNN 
(NN 
infoNN 
==NN 
nullNN 
)NN 
{OO 
ErrorMessagePP 
=PP 
$strPP J
;PPJ K
returnQQ 
RedirectToPageQQ %
(QQ% &
$strQQ& /
,QQ/ 0
newQQ1 4
{QQ5 6
	ReturnUrlQQ7 @
=QQA B
	returnUrlQQC L
}QQM N
)QQN O
;QQO P
}RR 
varUU 
resultUU 
=UU 
awaitUU 
_signInManagerUU -
.UU- .$
ExternalLoginSignInAsyncUU. F
(UUF G
infoUUG K
.UUK L
LoginProviderUUL Y
,UUY Z
infoUU[ _
.UU_ `
ProviderKeyUU` k
,UUk l
isPersistentUUm y
:UUy z
false	UU{ Ä
,
UUÄ Å
bypassTwoFactor
UUÇ ë
:
UUí ì
true
UUî ò
)
UUò ô
;
UUô ö
ifVV 
(VV 
resultVV 
.VV 
	SucceededVV  
)VV  !
{WW 
_loggerXX 
.XX 
LogInformationXX &
(XX& '
$strXX' X
,XXX Y
infoXXZ ^
.XX^ _
	PrincipalXX_ h
.XXh i
IdentityXXi q
.XXq r
NameXXr v
,XXv w
infoXXx |
.XX| }
LoginProvider	XX} ä
)
XXä ã
;
XXã å
returnYY 
LocalRedirectYY $
(YY$ %
	returnUrlYY% .
)YY. /
;YY/ 0
}ZZ 
if[[ 
([[ 
result[[ 
.[[ 
IsLockedOut[[ "
)[[" #
{\\ 
return]] 
RedirectToPage]] %
(]]% &
$str]]& 1
)]]1 2
;]]2 3
}^^ 
else__ 
{`` 
	ReturnUrlbb 
=bb 
	returnUrlbb %
;bb% &
ProviderDisplayNamecc #
=cc$ %
infocc& *
.cc* +
ProviderDisplayNamecc+ >
;cc> ?
ifdd 
(dd 
infodd 
.dd 
	Principaldd "
.dd" #
HasClaimdd# +
(dd+ ,
cdd, -
=>dd. 0
cdd1 2
.dd2 3
Typedd3 7
==dd8 :

ClaimTypesdd; E
.ddE F
EmailddF K
)ddK L
)ddL M
{ee 
Inputff 
=ff 
newff 

InputModelff  *
{gg 
Emailhh 
=hh 
infohh  $
.hh$ %
	Principalhh% .
.hh. /
FindFirstValuehh/ =
(hh= >

ClaimTypeshh> H
.hhH I
EmailhhI N
)hhN O
}ii 
;ii 
}jj 
returnkk 
Pagekk 
(kk 
)kk 
;kk 
}ll 
}mm 	
publicoo 
asyncoo 
Taskoo 
<oo 
IActionResultoo '
>oo' (#
OnPostConfirmationAsyncoo) @
(oo@ A
stringooA G
	returnUrlooH Q
=ooR S
nullooT X
)ooX Y
{pp 	
	returnUrlqq 
=qq 
	returnUrlqq !
??qq" $
Urlqq% (
.qq( )
Contentqq) 0
(qq0 1
$strqq1 5
)qq5 6
;qq6 7
varss 
infoss 
=ss 
awaitss 
_signInManagerss +
.ss+ ,%
GetExternalLoginInfoAsyncss, E
(ssE F
)ssF G
;ssG H
iftt 
(tt 
infott 
==tt 
nulltt 
)tt 
{uu 
ErrorMessagevv 
=vv 
$strvv ^
;vv^ _
returnww 
RedirectToPageww %
(ww% &
$strww& /
,ww/ 0
newww1 4
{ww5 6
	ReturnUrlww7 @
=wwA B
	returnUrlwwC L
}wwM N
)wwN O
;wwO P
}xx 
ifzz 
(zz 

ModelStatezz 
.zz 
IsValidzz "
)zz" #
{{{ 
var|| 
user|| 
=|| 
new|| 
IdentityUser|| +
{||, -
UserName||. 6
=||7 8
Input||9 >
.||> ?
Email||? D
,||D E
Email||F K
=||L M
Input||N S
.||S T
Email||T Y
}||Z [
;||[ \
var~~ 
result~~ 
=~~ 
await~~ "
_userManager~~# /
.~~/ 0
CreateAsync~~0 ;
(~~; <
user~~< @
)~~@ A
;~~A B
if 
( 
result 
. 
	Succeeded $
)$ %
{
ÄÄ 
result
ÅÅ 
=
ÅÅ 
await
ÅÅ "
_userManager
ÅÅ# /
.
ÅÅ/ 0
AddLoginAsync
ÅÅ0 =
(
ÅÅ= >
user
ÅÅ> B
,
ÅÅB C
info
ÅÅD H
)
ÅÅH I
;
ÅÅI J
if
ÇÇ 
(
ÇÇ 
result
ÇÇ 
.
ÇÇ 
	Succeeded
ÇÇ (
)
ÇÇ( )
{
ÉÉ 
_logger
ÑÑ 
.
ÑÑ  
LogInformation
ÑÑ  .
(
ÑÑ. /
$str
ÑÑ/ _
,
ÑÑ_ `
info
ÑÑa e
.
ÑÑe f
LoginProvider
ÑÑf s
)
ÑÑs t
;
ÑÑt u
var
ÜÜ 
userId
ÜÜ "
=
ÜÜ# $
await
ÜÜ% *
_userManager
ÜÜ+ 7
.
ÜÜ7 8
GetUserIdAsync
ÜÜ8 F
(
ÜÜF G
user
ÜÜG K
)
ÜÜK L
;
ÜÜL M
var
áá 
code
áá  
=
áá! "
await
áá# (
_userManager
áá) 5
.
áá5 61
#GenerateEmailConfirmationTokenAsync
áá6 Y
(
ááY Z
user
ááZ ^
)
áá^ _
;
áá_ `
code
àà 
=
àà 
WebEncoders
àà *
.
àà* +
Base64UrlEncode
àà+ :
(
àà: ;
Encoding
àà; C
.
ààC D
UTF8
ààD H
.
ààH I
GetBytes
ààI Q
(
ààQ R
code
ààR V
)
ààV W
)
ààW X
;
ààX Y
var
ââ 
callbackUrl
ââ '
=
ââ( )
Url
ââ* -
.
ââ- .
Page
ââ. 2
(
ââ2 3
$str
ää 3
,
ää3 4
pageHandler
ãã '
:
ãã' (
null
ãã) -
,
ãã- .
values
åå "
:
åå" #
new
åå$ '
{
åå( )
area
åå* .
=
åå/ 0
$str
åå1 ;
,
åå; <
userId
åå= C
=
ååD E
userId
ååF L
,
ååL M
code
ååN R
=
ååS T
code
ååU Y
}
ååZ [
,
åå[ \
protocol
çç $
:
çç$ %
Request
çç& -
.
çç- .
Scheme
çç. 4
)
çç4 5
;
çç5 6
await
èè 
_emailSender
èè *
.
èè* +
SendEmailAsync
èè+ 9
(
èè9 :
Input
èè: ?
.
èè? @
Email
èè@ E
,
èèE F
$str
èèG [
,
èè[ \
$"
êê 
$str
êê F
{
êêF G
HtmlEncoder
êêG R
.
êêR S
Default
êêS Z
.
êêZ [
Encode
êê[ a
(
êêa b
callbackUrl
êêb m
)
êêm n
}
êên o
$strêêo É
"êêÉ Ñ
)êêÑ Ö
;êêÖ Ü
if
ìì 
(
ìì 
_userManager
ìì (
.
ìì( )
Options
ìì) 0
.
ìì0 1
SignIn
ìì1 7
.
ìì7 8%
RequireConfirmedAccount
ìì8 O
)
ììO P
{
îî 
return
ïï "
RedirectToPage
ïï# 1
(
ïï1 2
$str
ïï2 J
,
ïïJ K
new
ïïL O
{
ïïP Q
Email
ïïR W
=
ïïX Y
Input
ïïZ _
.
ïï_ `
Email
ïï` e
}
ïïf g
)
ïïg h
;
ïïh i
}
ññ 
await
òò 
_signInManager
òò ,
.
òò, -
SignInAsync
òò- 8
(
òò8 9
user
òò9 =
,
òò= >
isPersistent
òò? K
:
òòK L
false
òòM R
,
òòR S
info
òòT X
.
òòX Y
LoginProvider
òòY f
)
òòf g
;
òòg h
return
öö 
LocalRedirect
öö ,
(
öö, -
	returnUrl
öö- 6
)
öö6 7
;
öö7 8
}
õõ 
}
úú 
foreach
ùù 
(
ùù 
var
ùù 
error
ùù "
in
ùù# %
result
ùù& ,
.
ùù, -
Errors
ùù- 3
)
ùù3 4
{
ûû 

ModelState
üü 
.
üü 
AddModelError
üü ,
(
üü, -
string
üü- 3
.
üü3 4
Empty
üü4 9
,
üü9 :
error
üü; @
.
üü@ A
Description
üüA L
)
üüL M
;
üüM N
}
†† 
}
°° !
ProviderDisplayName
££ 
=
££  !
info
££" &
.
££& '!
ProviderDisplayName
££' :
;
££: ;
	ReturnUrl
§§ 
=
§§ 
	returnUrl
§§ !
;
§§! "
return
•• 
Page
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 	
}
ßß 
}®® ”#
ÄD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 
ForgotPasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
ForgotPasswordModel "
(" #
UserManager# .
<. /
IdentityUser/ ;
>; <
userManager= H
,H I
IEmailSenderJ V
emailSenderW b
)b c
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
EmailAddress"" 
]"" 
public## 
string## 
Email## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (
OnPostAsync&&) 4
(&&4 5
)&&5 6
{'' 	
if(( 
((( 

ModelState(( 
.(( 
IsValid(( "
)((" #
{)) 
var** 
user** 
=** 
await**  
_userManager**! -
.**- .
FindByEmailAsync**. >
(**> ?
Input**? D
.**D E
Email**E J
)**J K
;**K L
if++ 
(++ 
user++ 
==++ 
null++  
||++! #
!++$ %
(++% &
await++& +
_userManager++, 8
.++8 9!
IsEmailConfirmedAsync++9 N
(++N O
user++O S
)++S T
)++T U
)++U V
{,, 
return.. 
RedirectToPage.. )
(..) *
$str..* H
)..H I
;..I J
}// 
var33 
code33 
=33 
await33  
_userManager33! -
.33- .+
GeneratePasswordResetTokenAsync33. M
(33M N
user33N R
)33R S
;33S T
code44 
=44 
WebEncoders44 "
.44" #
Base64UrlEncode44# 2
(442 3
Encoding443 ;
.44; <
UTF844< @
.44@ A
GetBytes44A I
(44I J
code44J N
)44N O
)44O P
;44P Q
var55 
callbackUrl55 
=55  !
Url55" %
.55% &
Page55& *
(55* +
$str66 ,
,66, -
pageHandler77 
:77  
null77! %
,77% &
values88 
:88 
new88 
{88  !
area88" &
=88' (
$str88) 3
,883 4
code885 9
}88: ;
,88; <
protocol99 
:99 
Request99 %
.99% &
Scheme99& ,
)99, -
;99- .
await;; 
_emailSender;; "
.;;" #
SendEmailAsync;;# 1
(;;1 2
Input<< 
.<< 
Email<< 
,<<  
$str== $
,==$ %
$">> 
$str>> =
{>>= >
HtmlEncoder>>> I
.>>I J
Default>>J Q
.>>Q R
Encode>>R X
(>>X Y
callbackUrl>>Y d
)>>d e
}>>e f
$str>>f z
">>z {
)>>{ |
;>>| }
return@@ 
RedirectToPage@@ %
(@@% &
$str@@& D
)@@D E
;@@E F
}AA 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
}EE 
}FF ©
åD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\ForgotPasswordConfirmation.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[		 
AllowAnonymous		 
]		 
public

 

class

 &
ForgotPasswordConfirmation

 +
:

, -
	PageModel

. 7
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} á
yD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Lockout.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{		 
[

 
AllowAnonymous

 
]

 
public 

class 
LockoutModel 
: 
	PageModel  )
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} §=
wD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
IdentityUser( 4
>4 5
signInManager6 C
,C D
ILogger 
< 

LoginModel 
> 
logger  &
,& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
)1 2
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[!! 	
BindProperty!!	 
]!! 
public"" 

InputModel"" 
Input"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public$$ 
IList$$ 
<$$  
AuthenticationScheme$$ )
>$$) *
ExternalLogins$$+ 9
{$$: ;
get$$< ?
;$$? @
set$$A D
;$$D E
}$$F G
public&& 
string&& 
	ReturnUrl&& 
{&&  !
get&&" %
;&&% &
set&&' *
;&&* +
}&&, -
[(( 	
TempData((	 
](( 
public)) 
string)) 
ErrorMessage)) "
{))# $
get))% (
;))( )
set))* -
;))- .
}))/ 0
public++ 
class++ 

InputModel++ 
{,, 	
[-- 
Required-- 
]-- 
[.. 
EmailAddress.. 
].. 
public// 
string// 
Email// 
{//  !
get//" %
;//% &
set//' *
;//* +
}//, -
[11 
Required11 
]11 
[22 
DataType22 
(22 
DataType22 
.22 
Password22 '
)22' (
]22( )
public33 
string33 
Password33 "
{33# $
get33% (
;33( )
set33* -
;33- .
}33/ 0
[55 
Display55 
(55 
Name55 
=55 
$str55 *
)55* +
]55+ ,
public66 
bool66 

RememberMe66 "
{66# $
get66% (
;66( )
set66* -
;66- .
}66/ 0
}77 	
public99 
async99 
Task99 

OnGetAsync99 $
(99$ %
string99% +
	returnUrl99, 5
=996 7
null998 <
)99< =
{:: 	
if;; 
(;; 
!;; 
string;; 
.;; 
IsNullOrEmpty;; %
(;;% &
ErrorMessage;;& 2
);;2 3
);;3 4
{<< 

ModelState== 
.== 
AddModelError== (
(==( )
string==) /
.==/ 0
Empty==0 5
,==5 6
ErrorMessage==7 C
)==C D
;==D E
}>> 
	returnUrl@@ 
??=@@ 
Url@@ 
.@@ 
Content@@ %
(@@% &
$str@@& *
)@@* +
;@@+ ,
awaitCC 
HttpContextCC 
.CC 
SignOutAsyncCC *
(CC* +
IdentityConstantsCC+ <
.CC< =
ExternalSchemeCC= K
)CCK L
;CCL M
ExternalLoginsEE 
=EE 
(EE 
awaitEE #
_signInManagerEE$ 2
.EE2 31
%GetExternalAuthenticationSchemesAsyncEE3 X
(EEX Y
)EEY Z
)EEZ [
.EE[ \
ToListEE\ b
(EEb c
)EEc d
;EEd e
	ReturnUrlGG 
=GG 
	returnUrlGG !
;GG! "
}HH 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
OnPostAsyncJJ) 4
(JJ4 5
stringJJ5 ;
	returnUrlJJ< E
=JJF G
nullJJH L
)JJL M
{KK 	
	returnUrlLL 
??=LL 
UrlLL 
.LL 
ContentLL %
(LL% &
$strLL& *
)LL* +
;LL+ ,
ExternalLoginsNN 
=NN 
(NN 
awaitNN #
_signInManagerNN$ 2
.NN2 31
%GetExternalAuthenticationSchemesAsyncNN3 X
(NNX Y
)NNY Z
)NNZ [
.NN[ \
ToListNN\ b
(NNb c
)NNc d
;NNd e
ifPP 
(PP 

ModelStatePP 
.PP 
IsValidPP "
)PP" #
{QQ 
varTT 
resultTT 
=TT 
awaitTT "
_signInManagerTT# 1
.TT1 2
PasswordSignInAsyncTT2 E
(TTE F
InputTTF K
.TTK L
EmailTTL Q
,TTQ R
InputTTS X
.TTX Y
PasswordTTY a
,TTa b
InputTTc h
.TTh i

RememberMeTTi s
,TTs t
lockoutOnFailure	TTu Ö
:
TTÖ Ü
false
TTá å
)
TTå ç
;
TTç é
ifUU 
(UU 
resultUU 
.UU 
	SucceededUU $
)UU$ %
{VV 
_loggerWW 
.WW 
LogInformationWW *
(WW* +
$strWW+ <
)WW< =
;WW= >
return[[ 
LocalRedirect[[ (
([[( )
	returnUrl[[) 2
)[[2 3
;[[3 4
}\\ 
if]] 
(]] 
result]] 
.]] 
RequiresTwoFactor]] ,
)]], -
{^^ 
return__ 
RedirectToPage__ )
(__) *
$str__* :
,__: ;
new__< ?
{__@ A
	ReturnUrl__B K
=__L M
	returnUrl__N W
,__W X

RememberMe__Y c
=__d e
Input__f k
.__k l

RememberMe__l v
}__w x
)__x y
;__y z
}`` 
ifaa 
(aa 
resultaa 
.aa 
IsLockedOutaa &
)aa& '
{bb 
_loggercc 
.cc 

LogWarningcc &
(cc& '
$strcc' A
)ccA B
;ccB C
returndd 
RedirectToPagedd )
(dd) *
$strdd* 5
)dd5 6
;dd6 7
}ee 
elseff 
{gg 

ModelStatehh 
.hh 
AddModelErrorhh ,
(hh, -
stringhh- 3
.hh3 4
Emptyhh4 9
,hh9 :
$strhh; S
)hhS T
;hhT U
returnii 
Pageii 
(ii  
)ii  !
;ii! "
}jj 
}kk 
returnnn 
Pagenn 
(nn 
)nn 
;nn 
}oo 	
}pp 
}qq Ñ;
~D:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\LoginWith2fa.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 
LoginWith2faModel "
:# $
	PageModel% .
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LoginWith2faModel! 2
>2 3
_logger4 ;
;; <
public 
LoginWith2faModel  
(  !
SignInManager! .
<. /
IdentityUser/ ;
>; <
signInManager= J
,J K
ILoggerL S
<S T
LoginWith2faModelT e
>e f
loggerg m
)m n
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public!! 
class!! 

InputModel!! 
{"" 	
[## 
Required## 
]## 
[$$ 
StringLength$$ 
($$ 
$num$$ 
,$$ 
ErrorMessage$$ )
=$$* +
$str$$, j
,$$j k
MinimumLength$$l y
=$$z {
$num$$| }
)$$} ~
]$$~ 
[%% 
DataType%% 
(%% 
DataType%% 
.%% 
Text%% #
)%%# $
]%%$ %
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& 0
)&&0 1
]&&1 2
public'' 
string'' 
TwoFactorCode'' '
{''( )
get''* -
;''- .
set''/ 2
;''2 3
}''4 5
[)) 
Display)) 
()) 
Name)) 
=)) 
$str)) 3
)))3 4
]))4 5
public** 
bool** 
RememberMachine** '
{**( )
get*** -
;**- .
set**/ 2
;**2 3
}**4 5
}++ 	
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (

OnGetAsync--) 3
(--3 4
bool--4 8

rememberMe--9 C
,--C D
string--E K
	returnUrl--L U
=--V W
null--X \
)--\ ]
{.. 	
var00 
user00 
=00 
await00 
_signInManager00 +
.00+ ,/
#GetTwoFactorAuthenticationUserAsync00, O
(00O P
)00P Q
;00Q R
if22 
(22 
user22 
==22 
null22 
)22 
{33 
throw44 
new44 %
InvalidOperationException44 3
(443 4
$"444 6
$str446 d
"44d e
)44e f
;44f g
}55 
	ReturnUrl77 
=77 
	returnUrl77 !
;77! "

RememberMe88 
=88 

rememberMe88 #
;88# $
return:: 
Page:: 
(:: 
):: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
OnPostAsync==) 4
(==4 5
bool==5 9

rememberMe==: D
,==D E
string==F L
	returnUrl==M V
===W X
null==Y ]
)==] ^
{>> 	
if?? 
(?? 
!?? 

ModelState?? 
.?? 
IsValid?? #
)??# $
{@@ 
returnAA 
PageAA 
(AA 
)AA 
;AA 
}BB 
	returnUrlDD 
=DD 
	returnUrlDD !
??DD" $
UrlDD% (
.DD( )
ContentDD) 0
(DD0 1
$strDD1 5
)DD5 6
;DD6 7
varFF 
userFF 
=FF 
awaitFF 
_signInManagerFF +
.FF+ ,/
#GetTwoFactorAuthenticationUserAsyncFF, O
(FFO P
)FFP Q
;FFQ R
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
throwII 
newII %
InvalidOperationExceptionII 3
(II3 4
$"II4 6
$strII6 d
"IId e
)IIe f
;IIf g
}JJ 
varLL 
authenticatorCodeLL !
=LL" #
InputLL$ )
.LL) *
TwoFactorCodeLL* 7
.LL7 8
ReplaceLL8 ?
(LL? @
$strLL@ C
,LLC D
stringLLE K
.LLK L
EmptyLLL Q
)LLQ R
.LLR S
ReplaceLLS Z
(LLZ [
$strLL[ ^
,LL^ _
stringLL` f
.LLf g
EmptyLLg l
)LLl m
;LLm n
varNN 
resultNN 
=NN 
awaitNN 
_signInManagerNN -
.NN- .-
!TwoFactorAuthenticatorSignInAsyncNN. O
(NNO P
authenticatorCodeNNP a
,NNa b

rememberMeNNc m
,NNm n
InputNNo t
.NNt u
RememberMachine	NNu Ñ
)
NNÑ Ö
;
NNÖ Ü
ifPP 
(PP 
resultPP 
.PP 
	SucceededPP  
)PP  !
{QQ 
_loggerRR 
.RR 
LogInformationRR &
(RR& '
$strRR' T
,RRT U
userRRV Z
.RRZ [
IdRR[ ]
)RR] ^
;RR^ _
returnSS 
LocalRedirectSS $
(SS$ %
	returnUrlSS% .
)SS. /
;SS/ 0
}TT 
elseUU 
ifUU 
(UU 
resultUU 
.UU 
IsLockedOutUU '
)UU' (
{VV 
_loggerWW 
.WW 

LogWarningWW "
(WW" #
$strWW# P
,WWP Q
userWWR V
.WWV W
IdWWW Y
)WWY Z
;WWZ [
returnXX 
RedirectToPageXX %
(XX% &
$strXX& 1
)XX1 2
;XX2 3
}YY 
elseZZ 
{[[ 
_logger\\ 
.\\ 

LogWarning\\ "
(\\" #
$str\\# d
,\\d e
user\\f j
.\\j k
Id\\k m
)\\m n
;\\n o

ModelState]] 
.]] 
AddModelError]] (
(]]( )
string]]) /
.]]/ 0
Empty]]0 5
,]]5 6
$str]]7 T
)]]T U
;]]U V
return^^ 
Page^^ 
(^^ 
)^^ 
;^^ 
}__ 
}`` 	
}aa 
}bb Ô1
áD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\LoginWithRecoveryCode.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class &
LoginWithRecoveryCodeModel +
:, -
	PageModel. 7
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !&
LoginWithRecoveryCodeModel! ;
>; <
_logger= D
;D E
public &
LoginWithRecoveryCodeModel )
() *
SignInManager* 7
<7 8
IdentityUser8 D
>D E
signInManagerF S
,S T
ILoggerU \
<\ ]&
LoginWithRecoveryCodeModel] w
>w x
loggery 
)	 Ä
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{   	
[!! 
BindProperty!! 
]!! 
["" 
Required"" 
]"" 
[## 
DataType## 
(## 
DataType## 
.## 
Text## #
)### $
]##$ %
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ +
)$$+ ,
]$$, -
public%% 
string%% 
RecoveryCode%% &
{%%' (
get%%) ,
;%%, -
set%%. 1
;%%1 2
}%%3 4
}&& 	
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (

OnGetAsync(() 3
(((3 4
string((4 :
	returnUrl((; D
=((E F
null((G K
)((K L
{)) 	
var++ 
user++ 
=++ 
await++ 
_signInManager++ +
.+++ ,/
#GetTwoFactorAuthenticationUserAsync++, O
(++O P
)++P Q
;++Q R
if,, 
(,, 
user,, 
==,, 
null,, 
),, 
{-- 
throw.. 
new.. %
InvalidOperationException.. 3
(..3 4
$"..4 6
$str..6 d
"..d e
)..e f
;..f g
}// 
	ReturnUrl11 
=11 
	returnUrl11 !
;11! "
return33 
Page33 
(33 
)33 
;33 
}44 	
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
OnPostAsync66) 4
(664 5
string665 ;
	returnUrl66< E
=66F G
null66H L
)66L M
{77 	
if88 
(88 
!88 

ModelState88 
.88 
IsValid88 #
)88# $
{99 
return:: 
Page:: 
(:: 
):: 
;:: 
};; 
var== 
user== 
=== 
await== 
_signInManager== +
.==+ ,/
#GetTwoFactorAuthenticationUserAsync==, O
(==O P
)==P Q
;==Q R
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
{?? 
throw@@ 
new@@ %
InvalidOperationException@@ 3
(@@3 4
$"@@4 6
$str@@6 d
"@@d e
)@@e f
;@@f g
}AA 
varCC 
recoveryCodeCC 
=CC 
InputCC $
.CC$ %
RecoveryCodeCC% 1
.CC1 2
ReplaceCC2 9
(CC9 :
$strCC: =
,CC= >
stringCC? E
.CCE F
EmptyCCF K
)CCK L
;CCL M
varEE 
resultEE 
=EE 
awaitEE 
_signInManagerEE -
.EE- .,
 TwoFactorRecoveryCodeSignInAsyncEE. N
(EEN O
recoveryCodeEEO [
)EE[ \
;EE\ ]
ifGG 
(GG 
resultGG 
.GG 
	SucceededGG  
)GG  !
{HH 
_loggerII 
.II 
LogInformationII &
(II& '
$strII' `
,II` a
userIIb f
.IIf g
IdIIg i
)IIi j
;IIj k
returnJJ 
LocalRedirectJJ $
(JJ$ %
	returnUrlJJ% .
??JJ/ 1
UrlJJ2 5
.JJ5 6
ContentJJ6 =
(JJ= >
$strJJ> B
)JJB C
)JJC D
;JJD E
}KK 
ifLL 
(LL 
resultLL 
.LL 
IsLockedOutLL "
)LL" #
{MM 
_loggerNN 
.NN 

LogWarningNN "
(NN" #
$strNN# P
,NNP Q
userNNR V
.NNV W
IdNNW Y
)NNY Z
;NNZ [
returnOO 
RedirectToPageOO %
(OO% &
$strOO& 1
)OO1 2
;OO2 3
}PP 
elseQQ 
{RR 
_loggerSS 
.SS 

LogWarningSS "
(SS" #
$strSS# _
,SS_ `
userSSa e
.SSe f
IdSSf h
)SSh i
;SSi j

ModelStateTT 
.TT 
AddModelErrorTT (
(TT( )
stringTT) /
.TT/ 0
EmptyTT0 5
,TT5 6
$strTT7 W
)TTW X
;TTX Y
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 
}WW 	
}XX 
}YY ¬
xD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
IdentityUser) 5
>5 6
signInManager7 D
,D E
ILoggerF M
<M N
LogoutModelN Y
>Y Z
logger[ a
)a b
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger   
.   
LogInformation   "
(  " #
$str  # 5
)  5 6
;  6 7
if!! 
(!! 
	returnUrl!! 
!=!! 
null!! !
)!!! "
{"" 
return## 
LocalRedirect## $
(##$ %
	returnUrl##% .
)##. /
;##/ 0
}$$ 
else%% 
{&& 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ ∞>
áD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class 
ChangePasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
class"" 

InputModel"" 
{## 	
[$$ 
Required$$ 
]$$ 
[%% 
DataType%% 
(%% 
DataType%% 
.%% 
Password%% '
)%%' (
]%%( )
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& .
)&&. /
]&&/ 0
public'' 
string'' 
OldPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
[)) 
Required)) 
])) 
[** 
StringLength** 
(** 
$num** 
,** 
ErrorMessage** +
=**, -
$str**. l
,**l m
MinimumLength**n {
=**| }
$num**~ 
)	** Ä
]
**Ä Å
[++ 
DataType++ 
(++ 
DataType++ 
.++ 
Password++ '
)++' (
]++( )
[,, 
Display,, 
(,, 
Name,, 
=,, 
$str,, *
),,* +
],,+ ,
public-- 
string-- 
NewPassword-- %
{--& '
get--( +
;--+ ,
set--- 0
;--0 1
}--2 3
[// 
DataType// 
(// 
DataType// 
.// 
Password// '
)//' (
]//( )
[00 
Display00 
(00 
Name00 
=00 
$str00 2
)002 3
]003 4
[11 
Compare11 
(11 
$str11 "
,11" #
ErrorMessage11$ 0
=111 2
$str113 m
)11m n
]11n o
public22 
string22 
ConfirmPassword22 )
{22* +
get22, /
;22/ 0
set221 4
;224 5
}226 7
}33 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (

OnGetAsync55) 3
(553 4
)554 5
{66 	
var77 
user77 
=77 
await77 
_userManager77 )
.77) *
GetUserAsync77* 6
(776 7
User777 ;
)77; <
;77< =
if88 
(88 
user88 
==88 
null88 
)88 
{99 
return:: 
NotFound:: 
(::  
$"::  "
$str::" ?
{::? @
_userManager::@ L
.::L M
	GetUserId::M V
(::V W
User::W [
)::[ \
}::\ ]
$str::] _
"::_ `
)::` a
;::a b
};; 
var== 
hasPassword== 
=== 
await== #
_userManager==$ 0
.==0 1
HasPasswordAsync==1 A
(==A B
user==B F
)==F G
;==G H
if>> 
(>> 
!>> 
hasPassword>> 
)>> 
{?? 
return@@ 
RedirectToPage@@ %
(@@% &
$str@@& 5
)@@5 6
;@@6 7
}AA 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' (
OnPostAsyncFF) 4
(FF4 5
)FF5 6
{GG 	
ifHH 
(HH 
!HH 

ModelStateHH 
.HH 
IsValidHH #
)HH# $
{II 
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 
varMM 
userMM 
=MM 
awaitMM 
_userManagerMM )
.MM) *
GetUserAsyncMM* 6
(MM6 7
UserMM7 ;
)MM; <
;MM< =
ifNN 
(NN 
userNN 
==NN 
nullNN 
)NN 
{OO 
returnPP 
NotFoundPP 
(PP  
$"PP  "
$strPP" ?
{PP? @
_userManagerPP@ L
.PPL M
	GetUserIdPPM V
(PPV W
UserPPW [
)PP[ \
}PP\ ]
$strPP] _
"PP_ `
)PP` a
;PPa b
}QQ 
varSS  
changePasswordResultSS $
=SS% &
awaitSS' ,
_userManagerSS- 9
.SS9 :
ChangePasswordAsyncSS: M
(SSM N
userSSN R
,SSR S
InputSST Y
.SSY Z
OldPasswordSSZ e
,SSe f
InputSSg l
.SSl m
NewPasswordSSm x
)SSx y
;SSy z
ifTT 
(TT 
!TT  
changePasswordResultTT %
.TT% &
	SucceededTT& /
)TT/ 0
{UU 
foreachVV 
(VV 
varVV 
errorVV "
inVV# % 
changePasswordResultVV& :
.VV: ;
ErrorsVV; A
)VVA B
{WW 

ModelStateXX 
.XX 
AddModelErrorXX ,
(XX, -
stringXX- 3
.XX3 4
EmptyXX4 9
,XX9 :
errorXX; @
.XX@ A
DescriptionXXA L
)XXL M
;XXM N
}YY 
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
await]] 
_signInManager]]  
.]]  !
RefreshSignInAsync]]! 3
(]]3 4
user]]4 8
)]]8 9
;]]9 :
_logger^^ 
.^^ 
LogInformation^^ "
(^^" #
$str^^# N
)^^N O
;^^O P
StatusMessage__ 
=__ 
$str__ =
;__= >
returnaa 
RedirectToPageaa !
(aa! "
)aa" #
;aa# $
}bb 	
}cc 
}dd ö3
ãD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\DeletePersonalData.cshtml.cs
	namespace		 	
WebApplication		
 
.		 
Areas		 
.		 
Identity		 '
.		' (
Pages		( -
.		- .
Account		. 5
.		5 6
Manage		6 <
{

 
public 

class #
DeletePersonalDataModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !#
DeletePersonalDataModel! 8
>8 9
_logger: A
;A B
public #
DeletePersonalDataModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
DeletePersonalDataModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[   
Required   
]   
[!! 
DataType!! 
(!! 
DataType!! 
.!! 
Password!! '
)!!' (
]!!( )
public"" 
string"" 
Password"" "
{""# $
get""% (
;""( )
set""* -
;""- .
}""/ 0
}## 	
public%% 
bool%% 
RequirePassword%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' (
OnGet'') .
(''. /
)''/ 0
{(( 	
var)) 
user)) 
=)) 
await)) 
_userManager)) )
.))) *
GetUserAsync))* 6
())6 7
User))7 ;
))); <
;))< =
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
$",,  "
$str,," ?
{,,? @
_userManager,,@ L
.,,L M
	GetUserId,,M V
(,,V W
User,,W [
),,[ \
},,\ ]
$str,,] _
",,_ `
),,` a
;,,a b
}-- 
RequirePassword// 
=// 
await// #
_userManager//$ 0
.//0 1
HasPasswordAsync//1 A
(//A B
user//B F
)//F G
;//G H
return00 
Page00 
(00 
)00 
;00 
}11 	
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
OnPostAsync33) 4
(334 5
)335 6
{44 	
var55 
user55 
=55 
await55 
_userManager55 )
.55) *
GetUserAsync55* 6
(556 7
User557 ;
)55; <
;55< =
if66 
(66 
user66 
==66 
null66 
)66 
{77 
return88 
NotFound88 
(88  
$"88  "
$str88" ?
{88? @
_userManager88@ L
.88L M
	GetUserId88M V
(88V W
User88W [
)88[ \
}88\ ]
$str88] _
"88_ `
)88` a
;88a b
}99 
RequirePassword;; 
=;; 
await;; #
_userManager;;$ 0
.;;0 1
HasPasswordAsync;;1 A
(;;A B
user;;B F
);;F G
;;;G H
if<< 
(<< 
RequirePassword<< 
)<<  
{== 
if>> 
(>> 
!>> 
await>> 
_userManager>> '
.>>' (
CheckPasswordAsync>>( :
(>>: ;
user>>; ?
,>>? @
Input>>A F
.>>F G
Password>>G O
)>>O P
)>>P Q
{?? 

ModelState@@ 
.@@ 
AddModelError@@ ,
(@@, -
string@@- 3
.@@3 4
Empty@@4 9
,@@9 :
$str@@; P
)@@P Q
;@@Q R
returnAA 
PageAA 
(AA  
)AA  !
;AA! "
}BB 
}CC 
varEE 
resultEE 
=EE 
awaitEE 
_userManagerEE +
.EE+ ,
DeleteAsyncEE, 7
(EE7 8
userEE8 <
)EE< =
;EE= >
varFF 
userIdFF 
=FF 
awaitFF 
_userManagerFF +
.FF+ ,
GetUserIdAsyncFF, :
(FF: ;
userFF; ?
)FF? @
;FF@ A
ifGG 
(GG 
!GG 
resultGG 
.GG 
	SucceededGG !
)GG! "
{HH 
throwII 
newII %
InvalidOperationExceptionII 3
(II3 4
$"II4 6
$strII6 g
{IIg h
userIdIIh n
}IIn o
$strIIo q
"IIq r
)IIr s
;IIs t
}JJ 
awaitLL 
_signInManagerLL  
.LL  !
SignOutAsyncLL! -
(LL- .
)LL. /
;LL/ 0
_loggerNN 
.NN 
LogInformationNN "
(NN" #
$strNN# P
,NNP Q
userIdNNR X
)NNX Y
;NNY Z
returnPP 
RedirectPP 
(PP 
$strPP  
)PP  !
;PP! "
}QQ 	
}RR 
}SS ¨'
ÉD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\Disable2fa.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class 
Disable2faModel  
:! "
	PageModel# ,
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
Disable2faModel! 0
>0 1
_logger2 9
;9 :
public 
Disable2faModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
Disable2faModel #
># $
logger% +
)+ ,
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{   
return!! 
NotFound!! 
(!!  
$"!!  "
$str!!" ?
{!!? @
_userManager!!@ L
.!!L M
	GetUserId!!M V
(!!V W
User!!W [
)!![ \
}!!\ ]
$str!!] _
"!!_ `
)!!` a
;!!a b
}"" 
if$$ 
($$ 
!$$ 
await$$ 
_userManager$$ #
.$$# $$
GetTwoFactorEnabledAsync$$$ <
($$< =
user$$= A
)$$A B
)$$B C
{%% 
throw&& 
new&& %
InvalidOperationException&& 3
(&&3 4
$"&&4 6
$str&&6 [
{&&[ \
_userManager&&\ h
.&&h i
	GetUserId&&i r
(&&r s
User&&s w
)&&w x
}&&x y
$str	&&y ô
"
&&ô ö
)
&&ö õ
;
&&õ ú
}'' 
return)) 
Page)) 
()) 
))) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
OnPostAsync,,) 4
(,,4 5
),,5 6
{-- 	
var.. 
user.. 
=.. 
await.. 
_userManager.. )
...) *
GetUserAsync..* 6
(..6 7
User..7 ;
)..; <
;..< =
if// 
(// 
user// 
==// 
null// 
)// 
{00 
return11 
NotFound11 
(11  
$"11  "
$str11" ?
{11? @
_userManager11@ L
.11L M
	GetUserId11M V
(11V W
User11W [
)11[ \
}11\ ]
$str11] _
"11_ `
)11` a
;11a b
}22 
var44 
disable2faResult44  
=44! "
await44# (
_userManager44) 5
.445 6$
SetTwoFactorEnabledAsync446 N
(44N O
user44O S
,44S T
false44U Z
)44Z [
;44[ \
if55 
(55 
!55 
disable2faResult55 !
.55! "
	Succeeded55" +
)55+ ,
{66 
throw77 
new77 %
InvalidOperationException77 3
(773 4
$"774 6
$str776 p
{77p q
_userManager77q }
.77} ~
	GetUserId	77~ á
(
77á à
User
77à å
)
77å ç
}
77ç é
$str
77é ê
"
77ê ë
)
77ë í
;
77í ì
}88 
_logger:: 
.:: 
LogInformation:: "
(::" #
$str::# N
,::N O
_userManager::P \
.::\ ]
	GetUserId::] f
(::f g
User::g k
)::k l
)::l m
;::m n
StatusMessage;; 
=;; 
$str;; m
;;;m n
return<< 
RedirectToPage<< !
(<<! "
$str<<" =
)<<= >
;<<> ?
}== 	
}>> 
}?? ì&
çD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\DownloadPersonalData.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
.5 6
Manage6 <
{ 
public 

class %
DownloadPersonalDataModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !%
DownloadPersonalDataModel! :
>: ;
_logger< C
;C D
public %
DownloadPersonalDataModel (
(( )
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< %
DownloadPersonalDataModel -
>- .
logger/ 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPostAsync) 4
(4 5
)5 6
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return   
NotFound   
(    
$"    "
$str  " ?
{  ? @
_userManager  @ L
.  L M
	GetUserId  M V
(  V W
User  W [
)  [ \
}  \ ]
$str  ] _
"  _ `
)  ` a
;  a b
}!! 
_logger## 
.## 
LogInformation## "
(##" #
$str### [
,##[ \
_userManager##] i
.##i j
	GetUserId##j s
(##s t
User##t x
)##x y
)##y z
;##z {
var&& 
personalData&& 
=&& 
new&& "

Dictionary&&# -
<&&- .
string&&. 4
,&&4 5
string&&6 <
>&&< =
(&&= >
)&&> ?
;&&? @
var'' 
personalDataProps'' !
=''" #
typeof''$ *
(''* +
IdentityUser''+ 7
)''7 8
.''8 9
GetProperties''9 F
(''F G
)''G H
.''H I
Where''I N
(''N O
prop((  
=>((! #
	Attribute(($ -
.((- .
	IsDefined((. 7
(((7 8
prop((8 <
,((< =
typeof((> D
(((D E!
PersonalDataAttribute((E Z
)((Z [
)(([ \
)((\ ]
;((] ^
foreach)) 
()) 
var)) 
p)) 
in)) 
personalDataProps)) /
)))/ 0
{** 
personalData++ 
.++ 
Add++  
(++  !
p++! "
.++" #
Name++# '
,++' (
p++) *
.++* +
GetValue+++ 3
(++3 4
user++4 8
)++8 9
?++9 :
.++: ;
ToString++; C
(++C D
)++D E
??++F H
$str++I O
)++O P
;++P Q
},, 
var.. 
logins.. 
=.. 
await.. 
_userManager.. +
...+ ,
GetLoginsAsync.., :
(..: ;
user..; ?
)..? @
;..@ A
foreach// 
(// 
var// 
l// 
in// 
logins// $
)//$ %
{00 
personalData11 
.11 
Add11  
(11  !
$"11! #
{11# $
l11$ %
.11% &
LoginProvider11& 3
}113 4
$str114 P
"11P Q
,11Q R
l11S T
.11T U
ProviderKey11U `
)11` a
;11a b
}22 
Response44 
.44 
Headers44 
.44 
Add44  
(44  !
$str44! 6
,446 7
$str448 `
)44` a
;44a b
return55 
new55 
FileContentResult55 (
(55( )
JsonSerializer55) 7
.557 8 
SerializeToUtf8Bytes558 L
(55L M
personalData55M Y
)55Y Z
,55Z [
$str55\ n
)55n o
;55o p
}66 	
}77 
}88 Ó_
~D:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\Email.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
.5 6
Manage6 <
{ 
public 

partial 
class 

EmailModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

EmailModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender 
= 
emailSender &
;& '
} 	
public   
string   
Username   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public"" 
string"" 
Email"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
public$$ 
bool$$ 
IsEmailConfirmed$$ $
{$$% &
get$$' *
;$$* +
set$$, /
;$$/ 0
}$$1 2
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
[)) 	
BindProperty))	 
])) 
public** 

InputModel** 
Input** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 
class,, 

InputModel,, 
{-- 	
[.. 
Required.. 
].. 
[// 
EmailAddress// 
]// 
[00 
Display00 
(00 
Name00 
=00 
$str00 '
)00' (
]00( )
public11 
string11 
NewEmail11 "
{11# $
get11% (
;11( )
set11* -
;11- .
}11/ 0
}22 	
private44 
async44 
Task44 
	LoadAsync44 $
(44$ %
IdentityUser44% 1
user442 6
)446 7
{55 	
var66 
email66 
=66 
await66 
_userManager66 *
.66* +
GetEmailAsync66+ 8
(668 9
user669 =
)66= >
;66> ?
Email77 
=77 
email77 
;77 
Input99 
=99 
new99 

InputModel99 "
{:: 
NewEmail;; 
=;; 
email;;  
,;;  !
}<< 
;<< 
IsEmailConfirmed>> 
=>> 
await>> $
_userManager>>% 1
.>>1 2!
IsEmailConfirmedAsync>>2 G
(>>G H
user>>H L
)>>L M
;>>M N
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (

OnGetAsyncAA) 3
(AA3 4
)AA4 5
{BB 	
varCC 
userCC 
=CC 
awaitCC 
_userManagerCC )
.CC) *
GetUserAsyncCC* 6
(CC6 7
UserCC7 ;
)CC; <
;CC< =
ifDD 
(DD 
userDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
NotFoundFF 
(FF  
$"FF  "
$strFF" ?
{FF? @
_userManagerFF@ L
.FFL M
	GetUserIdFFM V
(FFV W
UserFFW [
)FF[ \
}FF\ ]
$strFF] _
"FF_ `
)FF` a
;FFa b
}GG 
awaitII 
	LoadAsyncII 
(II 
userII  
)II  !
;II! "
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' ("
OnPostChangeEmailAsyncMM) ?
(MM? @
)MM@ A
{NN 	
varOO 
userOO 
=OO 
awaitOO 
_userManagerOO )
.OO) *
GetUserAsyncOO* 6
(OO6 7
UserOO7 ;
)OO; <
;OO< =
ifPP 
(PP 
userPP 
==PP 
nullPP 
)PP 
{QQ 
returnRR 
NotFoundRR 
(RR  
$"RR  "
$strRR" ?
{RR? @
_userManagerRR@ L
.RRL M
	GetUserIdRRM V
(RRV W
UserRRW [
)RR[ \
}RR\ ]
$strRR] _
"RR_ `
)RR` a
;RRa b
}SS 
ifUU 
(UU 
!UU 

ModelStateUU 
.UU 
IsValidUU #
)UU# $
{VV 
awaitWW 
	LoadAsyncWW 
(WW  
userWW  $
)WW$ %
;WW% &
returnXX 
PageXX 
(XX 
)XX 
;XX 
}YY 
var[[ 
email[[ 
=[[ 
await[[ 
_userManager[[ *
.[[* +
GetEmailAsync[[+ 8
([[8 9
user[[9 =
)[[= >
;[[> ?
if\\ 
(\\ 
Input\\ 
.\\ 
NewEmail\\ 
!=\\ !
email\\" '
)\\' (
{]] 
var^^ 
userId^^ 
=^^ 
await^^ "
_userManager^^# /
.^^/ 0
GetUserIdAsync^^0 >
(^^> ?
user^^? C
)^^C D
;^^D E
var__ 
code__ 
=__ 
await__  
_userManager__! -
.__- .)
GenerateChangeEmailTokenAsync__. K
(__K L
user__L P
,__P Q
Input__R W
.__W X
NewEmail__X `
)__` a
;__a b
code`` 
=`` 
WebEncoders`` "
.``" #
Base64UrlEncode``# 2
(``2 3
Encoding``3 ;
.``; <
UTF8``< @
.``@ A
GetBytes``A I
(``I J
code``J N
)``N O
)``O P
;``P Q
varaa 
callbackUrlaa 
=aa  !
Urlaa" %
.aa% &
Pageaa& *
(aa* +
$strbb 1
,bb1 2
pageHandlercc 
:cc  
nullcc! %
,cc% &
valuesdd 
:dd 
newdd 
{dd  !
userIddd" (
=dd) *
userIddd+ 1
,dd1 2
emaildd3 8
=dd9 :
Inputdd; @
.dd@ A
NewEmailddA I
,ddI J
codeddK O
=ddP Q
codeddR V
}ddW X
,ddX Y
protocolee 
:ee 
Requestee %
.ee% &
Schemeee& ,
)ee, -
;ee- .
awaitff 
_emailSenderff "
.ff" #
SendEmailAsyncff# 1
(ff1 2
Inputgg 
.gg 
NewEmailgg "
,gg" #
$strhh (
,hh( )
$"ii 
$strii >
{ii> ?
HtmlEncoderii? J
.iiJ K
DefaultiiK R
.iiR S
EncodeiiS Y
(iiY Z
callbackUrliiZ e
)iie f
}iif g
$striig {
"ii{ |
)ii| }
;ii} ~
StatusMessagekk 
=kk 
$strkk  b
;kkb c
returnll 
RedirectToPagell %
(ll% &
)ll& '
;ll' (
}mm 
StatusMessageoo 
=oo 
$stroo 6
;oo6 7
returnpp 
RedirectToPagepp !
(pp! "
)pp" #
;pp# $
}qq 	
publicss 
asyncss 
Taskss 
<ss 
IActionResultss '
>ss' (,
 OnPostSendVerificationEmailAsyncss) I
(ssI J
)ssJ K
{tt 	
varuu 
useruu 
=uu 
awaituu 
_userManageruu )
.uu) *
GetUserAsyncuu* 6
(uu6 7
Useruu7 ;
)uu; <
;uu< =
ifvv 
(vv 
uservv 
==vv 
nullvv 
)vv 
{ww 
returnxx 
NotFoundxx 
(xx  
$"xx  "
$strxx" ?
{xx? @
_userManagerxx@ L
.xxL M
	GetUserIdxxM V
(xxV W
UserxxW [
)xx[ \
}xx\ ]
$strxx] _
"xx_ `
)xx` a
;xxa b
}yy 
if{{ 
({{ 
!{{ 

ModelState{{ 
.{{ 
IsValid{{ #
){{# $
{|| 
await}} 
	LoadAsync}} 
(}}  
user}}  $
)}}$ %
;}}% &
return~~ 
Page~~ 
(~~ 
)~~ 
;~~ 
} 
var
ÅÅ 
userId
ÅÅ 
=
ÅÅ 
await
ÅÅ 
_userManager
ÅÅ +
.
ÅÅ+ ,
GetUserIdAsync
ÅÅ, :
(
ÅÅ: ;
user
ÅÅ; ?
)
ÅÅ? @
;
ÅÅ@ A
var
ÇÇ 
email
ÇÇ 
=
ÇÇ 
await
ÇÇ 
_userManager
ÇÇ *
.
ÇÇ* +
GetEmailAsync
ÇÇ+ 8
(
ÇÇ8 9
user
ÇÇ9 =
)
ÇÇ= >
;
ÇÇ> ?
var
ÉÉ 
code
ÉÉ 
=
ÉÉ 
await
ÉÉ 
_userManager
ÉÉ )
.
ÉÉ) *1
#GenerateEmailConfirmationTokenAsync
ÉÉ* M
(
ÉÉM N
user
ÉÉN R
)
ÉÉR S
;
ÉÉS T
code
ÑÑ 
=
ÑÑ 
WebEncoders
ÑÑ 
.
ÑÑ 
Base64UrlEncode
ÑÑ .
(
ÑÑ. /
Encoding
ÑÑ/ 7
.
ÑÑ7 8
UTF8
ÑÑ8 <
.
ÑÑ< =
GetBytes
ÑÑ= E
(
ÑÑE F
code
ÑÑF J
)
ÑÑJ K
)
ÑÑK L
;
ÑÑL M
var
ÖÖ 
callbackUrl
ÖÖ 
=
ÖÖ 
Url
ÖÖ !
.
ÖÖ! "
Page
ÖÖ" &
(
ÖÖ& '
$str
ÜÜ '
,
ÜÜ' (
pageHandler
áá 
:
áá 
null
áá !
,
áá! "
values
àà 
:
àà 
new
àà 
{
àà 
area
àà "
=
àà# $
$str
àà% /
,
àà/ 0
userId
àà1 7
=
àà8 9
userId
àà: @
,
àà@ A
code
ààB F
=
ààG H
code
ààI M
}
ààN O
,
ààO P
protocol
ââ 
:
ââ 
Request
ââ !
.
ââ! "
Scheme
ââ" (
)
ââ( )
;
ââ) *
await
ää 
_emailSender
ää 
.
ää 
SendEmailAsync
ää -
(
ää- .
email
ãã 
,
ãã 
$str
åå $
,
åå$ %
$"
çç 
$str
çç :
{
çç: ;
HtmlEncoder
çç; F
.
ççF G
Default
ççG N
.
ççN O
Encode
ççO U
(
ççU V
callbackUrl
ççV a
)
çça b
}
ççb c
$str
ççc w
"
ççw x
)
ççx y
;
ççy z
StatusMessage
èè 
=
èè 
$str
èè O
;
èèO P
return
êê 
RedirectToPage
êê !
(
êê! "
)
êê" #
;
êê# $
}
ëë 	
}
íí 
}ìì ìd
åD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
.5 6
Manage6 <
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string "
AuthenticatorUriFormat 3
=4 5
$str6 m
;m n
public $
EnableAuthenticatorModel '
(' (
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
_urlEncoder 
= 

urlEncoder $
;$ %
}   	
public"" 
string"" 
	SharedKey"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public$$ 
string$$ 
AuthenticatorUri$$ &
{$$' (
get$$) ,
;$$, -
set$$. 1
;$$1 2
}$$3 4
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
['' 
]'' 
RecoveryCodes'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
[)) 	
TempData))	 
])) 
public** 
string** 
StatusMessage** #
{**$ %
get**& )
;**) *
set**+ .
;**. /
}**0 1
[,, 	
BindProperty,,	 
],, 
public-- 

InputModel-- 
Input-- 
{--  !
get--" %
;--% &
set--' *
;--* +
}--, -
public// 
class// 

InputModel// 
{00 	
[11 
Required11 
]11 
[22 
StringLength22 
(22 
$num22 
,22 
ErrorMessage22 )
=22* +
$str22, j
,22j k
MinimumLength22l y
=22z {
$num22| }
)22} ~
]22~ 
[33 
DataType33 
(33 
DataType33 
.33 
Text33 #
)33# $
]33$ %
[44 
Display44 
(44 
Name44 
=44 
$str44 /
)44/ 0
]440 1
public55 
string55 
Code55 
{55  
get55! $
;55$ %
set55& )
;55) *
}55+ ,
}66 	
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' (

OnGetAsync88) 3
(883 4
)884 5
{99 	
var:: 
user:: 
=:: 
await:: 
_userManager:: )
.::) *
GetUserAsync::* 6
(::6 7
User::7 ;
)::; <
;::< =
if;; 
(;; 
user;; 
==;; 
null;; 
);; 
{<< 
return== 
NotFound== 
(==  
$"==  "
$str==" ?
{==? @
_userManager==@ L
.==L M
	GetUserId==M V
(==V W
User==W [
)==[ \
}==\ ]
$str==] _
"==_ `
)==` a
;==a b
}>> 
await@@ *
LoadSharedKeyAndQrCodeUriAsync@@ 0
(@@0 1
user@@1 5
)@@5 6
;@@6 7
returnBB 
PageBB 
(BB 
)BB 
;BB 
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
IActionResultEE '
>EE' (
OnPostAsyncEE) 4
(EE4 5
)EE5 6
{FF 	
varGG 
userGG 
=GG 
awaitGG 
_userManagerGG )
.GG) *
GetUserAsyncGG* 6
(GG6 7
UserGG7 ;
)GG; <
;GG< =
ifHH 
(HH 
userHH 
==HH 
nullHH 
)HH 
{II 
returnJJ 
NotFoundJJ 
(JJ  
$"JJ  "
$strJJ" ?
{JJ? @
_userManagerJJ@ L
.JJL M
	GetUserIdJJM V
(JJV W
UserJJW [
)JJ[ \
}JJ\ ]
$strJJ] _
"JJ_ `
)JJ` a
;JJa b
}KK 
ifMM 
(MM 
!MM 

ModelStateMM 
.MM 
IsValidMM #
)MM# $
{NN 
awaitOO *
LoadSharedKeyAndQrCodeUriAsyncOO 4
(OO4 5
userOO5 9
)OO9 :
;OO: ;
returnPP 
PagePP 
(PP 
)PP 
;PP 
}QQ 
varTT 
verificationCodeTT  
=TT! "
InputTT# (
.TT( )
CodeTT) -
.TT- .
ReplaceTT. 5
(TT5 6
$strTT6 9
,TT9 :
stringTT; A
.TTA B
EmptyTTB G
)TTG H
.TTH I
ReplaceTTI P
(TTP Q
$strTTQ T
,TTT U
stringTTV \
.TT\ ]
EmptyTT] b
)TTb c
;TTc d
varVV 
is2faTokenValidVV 
=VV  !
awaitVV" '
_userManagerVV( 4
.VV4 5%
VerifyTwoFactorTokenAsyncVV5 N
(VVN O
userWW 
,WW 
_userManagerWW "
.WW" #
OptionsWW# *
.WW* +
TokensWW+ 1
.WW1 2&
AuthenticatorTokenProviderWW2 L
,WWL M
verificationCodeWWN ^
)WW^ _
;WW_ `
ifYY 
(YY 
!YY 
is2faTokenValidYY  
)YY  !
{ZZ 

ModelState[[ 
.[[ 
AddModelError[[ (
([[( )
$str[[) 5
,[[5 6
$str[[7 V
)[[V W
;[[W X
await\\ *
LoadSharedKeyAndQrCodeUriAsync\\ 4
(\\4 5
user\\5 9
)\\9 :
;\\: ;
return]] 
Page]] 
(]] 
)]] 
;]] 
}^^ 
await`` 
_userManager`` 
.`` $
SetTwoFactorEnabledAsync`` 7
(``7 8
user``8 <
,``< =
true``> B
)``B C
;``C D
varaa 
userIdaa 
=aa 
awaitaa 
_userManageraa +
.aa+ ,
GetUserIdAsyncaa, :
(aa: ;
useraa; ?
)aa? @
;aa@ A
_loggerbb 
.bb 
LogInformationbb "
(bb" #
$strbb# g
,bbg h
userIdbbi o
)bbo p
;bbp q
StatusMessagedd 
=dd 
$strdd G
;ddG H
ifff 
(ff 
awaitff 
_userManagerff "
.ff" ##
CountRecoveryCodesAsyncff# :
(ff: ;
userff; ?
)ff? @
==ffA C
$numffD E
)ffE F
{gg 
varhh 
recoveryCodeshh !
=hh" #
awaithh$ )
_userManagerhh* 6
.hh6 72
&GenerateNewTwoFactorRecoveryCodesAsynchh7 ]
(hh] ^
userhh^ b
,hhb c
$numhhd f
)hhf g
;hhg h
RecoveryCodesii 
=ii 
recoveryCodesii  -
.ii- .
ToArrayii. 5
(ii5 6
)ii6 7
;ii7 8
returnjj 
RedirectToPagejj %
(jj% &
$strjj& ;
)jj; <
;jj< =
}kk 
elsell 
{mm 
returnnn 
RedirectToPagenn %
(nn% &
$strnn& A
)nnA B
;nnB C
}oo 
}pp 	
privaterr 
asyncrr 
Taskrr *
LoadSharedKeyAndQrCodeUriAsyncrr 9
(rr9 :
IdentityUserrr: F
userrrG K
)rrK L
{ss 	
varuu 
unformattedKeyuu 
=uu  
awaituu! &
_userManageruu' 3
.uu3 4$
GetAuthenticatorKeyAsyncuu4 L
(uuL M
useruuM Q
)uuQ R
;uuR S
ifvv 
(vv 
stringvv 
.vv 
IsNullOrEmptyvv $
(vv$ %
unformattedKeyvv% 3
)vv3 4
)vv4 5
{ww 
awaitxx 
_userManagerxx "
.xx" #&
ResetAuthenticatorKeyAsyncxx# =
(xx= >
userxx> B
)xxB C
;xxC D
unformattedKeyyy 
=yy  
awaityy! &
_userManageryy' 3
.yy3 4$
GetAuthenticatorKeyAsyncyy4 L
(yyL M
useryyM Q
)yyQ R
;yyR S
}zz 
	SharedKey|| 
=|| 
	FormatKey|| !
(||! "
unformattedKey||" 0
)||0 1
;||1 2
var~~ 
email~~ 
=~~ 
await~~ 
_userManager~~ *
.~~* +
GetEmailAsync~~+ 8
(~~8 9
user~~9 =
)~~= >
;~~> ?
AuthenticatorUri 
= 
GenerateQrCodeUri 0
(0 1
email1 6
,6 7
unformattedKey8 F
)F G
;G H
}
ÄÄ 	
private
ÇÇ 
string
ÇÇ 
	FormatKey
ÇÇ  
(
ÇÇ  !
string
ÇÇ! '
unformattedKey
ÇÇ( 6
)
ÇÇ6 7
{
ÉÉ 	
var
ÑÑ 
result
ÑÑ 
=
ÑÑ 
new
ÑÑ 
StringBuilder
ÑÑ *
(
ÑÑ* +
)
ÑÑ+ ,
;
ÑÑ, -
int
ÖÖ 
currentPosition
ÖÖ 
=
ÖÖ  !
$num
ÖÖ" #
;
ÖÖ# $
while
ÜÜ 
(
ÜÜ 
currentPosition
ÜÜ "
+
ÜÜ# $
$num
ÜÜ% &
<
ÜÜ' (
unformattedKey
ÜÜ) 7
.
ÜÜ7 8
Length
ÜÜ8 >
)
ÜÜ> ?
{
áá 
result
àà 
.
àà 
Append
àà 
(
àà 
unformattedKey
àà ,
.
àà, -
	Substring
àà- 6
(
àà6 7
currentPosition
àà7 F
,
ààF G
$num
ààH I
)
ààI J
)
ààJ K
.
ààK L
Append
ààL R
(
ààR S
$str
ààS V
)
ààV W
;
ààW X
currentPosition
ââ 
+=
ââ  "
$num
ââ# $
;
ââ$ %
}
ää 
if
ãã 
(
ãã 
currentPosition
ãã 
<
ãã  !
unformattedKey
ãã" 0
.
ãã0 1
Length
ãã1 7
)
ãã7 8
{
åå 
result
çç 
.
çç 
Append
çç 
(
çç 
unformattedKey
çç ,
.
çç, -
	Substring
çç- 6
(
çç6 7
currentPosition
çç7 F
)
ççF G
)
ççG H
;
ççH I
}
éé 
return
êê 
result
êê 
.
êê 
ToString
êê "
(
êê" #
)
êê# $
.
êê$ %
ToLowerInvariant
êê% 5
(
êê5 6
)
êê6 7
;
êê7 8
}
ëë 	
private
ìì 
string
ìì 
GenerateQrCodeUri
ìì (
(
ìì( )
string
ìì) /
email
ìì0 5
,
ìì5 6
string
ìì7 =
unformattedKey
ìì> L
)
ììL M
{
îî 	
return
ïï 
string
ïï 
.
ïï 
Format
ïï  
(
ïï  !$
AuthenticatorUriFormat
ññ &
,
ññ& '
_urlEncoder
óó 
.
óó 
Encode
óó "
(
óó" #
$str
óó# 3
)
óó3 4
,
óó4 5
_urlEncoder
òò 
.
òò 
Encode
òò "
(
òò" #
email
òò# (
)
òò( )
,
òò) *
unformattedKey
ôô 
)
ôô 
;
ôô  
}
öö 	
}
õõ 
}úú ©H
áD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\ExternalLogins.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class 
ExternalLoginsModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
ExternalLoginsModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
<  
AuthenticationScheme )
>) *
OtherLogins+ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
bool 
ShowRemoveButton $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (

OnGetAsync"") 3
(""3 4
)""4 5
{## 	
var$$ 
user$$ 
=$$ 
await$$ 
_userManager$$ )
.$$) *
GetUserAsync$$* 6
($$6 7
User$$7 ;
)$$; <
;$$< =
if%% 
(%% 
user%% 
==%% 
null%% 
)%% 
{&& 
return'' 
NotFound'' 
(''  
$"''  "
$str''" H
"''H I
)''I J
;''J K
}(( 
CurrentLogins** 
=** 
await** !
_userManager**" .
.**. /
GetLoginsAsync**/ =
(**= >
user**> B
)**B C
;**C D
OtherLogins++ 
=++ 
(++ 
await++  
_signInManager++! /
.++/ 01
%GetExternalAuthenticationSchemesAsync++0 U
(++U V
)++V W
)++W X
.,, 
Where,, 
(,, 
auth,, 
=>,, 
CurrentLogins,, ,
.,,, -
All,,- 0
(,,0 1
ul,,1 3
=>,,4 6
auth,,7 ;
.,,; <
Name,,< @
!=,,A C
ul,,D F
.,,F G
LoginProvider,,G T
),,T U
),,U V
.-- 
ToList-- 
(-- 
)-- 
;-- 
ShowRemoveButton.. 
=.. 
user.. #
...# $
PasswordHash..$ 0
!=..1 3
null..4 8
||..9 ;
CurrentLogins..< I
...I J
Count..J O
>..P Q
$num..R S
;..S T
return// 
Page// 
(// 
)// 
;// 
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' ("
OnPostRemoveLoginAsync22) ?
(22? @
string22@ F
loginProvider22G T
,22T U
string22V \
providerKey22] h
)22h i
{33 	
var44 
user44 
=44 
await44 
_userManager44 )
.44) *
GetUserAsync44* 6
(446 7
User447 ;
)44; <
;44< =
if55 
(55 
user55 
==55 
null55 
)55 
{66 
return77 
NotFound77 
(77  
$"77  "
$str77" H
"77H I
)77I J
;77J K
}88 
var:: 
result:: 
=:: 
await:: 
_userManager:: +
.::+ ,
RemoveLoginAsync::, <
(::< =
user::= A
,::A B
loginProvider::C P
,::P Q
providerKey::R ]
)::] ^
;::^ _
if;; 
(;; 
!;; 
result;; 
.;; 
	Succeeded;; !
);;! "
{<< 
StatusMessage== 
=== 
$str==  E
;==E F
return>> 
RedirectToPage>> %
(>>% &
)>>& '
;>>' (
}?? 
awaitAA 
_signInManagerAA  
.AA  !
RefreshSignInAsyncAA! 3
(AA3 4
userAA4 8
)AA8 9
;AA9 :
StatusMessageBB 
=BB 
$strBB =
;BB= >
returnCC 
RedirectToPageCC !
(CC! "
)CC" #
;CC# $
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' ( 
OnPostLinkLoginAsyncFF) =
(FF= >
stringFF> D
providerFFE M
)FFM N
{GG 	
awaitII 
HttpContextII 
.II 
SignOutAsyncII *
(II* +
IdentityConstantsII+ <
.II< =
ExternalSchemeII= K
)IIK L
;IIL M
varLL 
redirectUrlLL 
=LL 
UrlLL !
.LL! "
PageLL" &
(LL& '
$strLL' 9
,LL9 :
pageHandlerLL; F
:LLF G
$strLLH [
)LL[ \
;LL\ ]
varMM 

propertiesMM 
=MM 
_signInManagerMM +
.MM+ ,5
)ConfigureExternalAuthenticationPropertiesMM, U
(MMU V
providerMMV ^
,MM^ _
redirectUrlMM` k
,MMk l
_userManagerMMm y
.MMy z
	GetUserId	MMz É
(
MMÉ Ñ
User
MMÑ à
)
MMà â
)
MMâ ä
;
MMä ã
returnNN 
newNN 
ChallengeResultNN &
(NN& '
providerNN' /
,NN/ 0

propertiesNN1 ;
)NN; <
;NN< =
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IActionResultQQ '
>QQ' ('
OnGetLinkLoginCallbackAsyncQQ) D
(QQD E
)QQE F
{RR 	
varSS 
userSS 
=SS 
awaitSS 
_userManagerSS )
.SS) *
GetUserAsyncSS* 6
(SS6 7
UserSS7 ;
)SS; <
;SS< =
ifTT 
(TT 
userTT 
==TT 
nullTT 
)TT 
{UU 
returnVV 
NotFoundVV 
(VV  
$"VV  "
$strVV" H
"VVH I
)VVI J
;VVJ K
}WW 
varYY 
infoYY 
=YY 
awaitYY 
_signInManagerYY +
.YY+ ,%
GetExternalLoginInfoAsyncYY, E
(YYE F
userYYF J
.YYJ K
IdYYK M
)YYM N
;YYN O
ifZZ 
(ZZ 
infoZZ 
==ZZ 
nullZZ 
)ZZ 
{[[ 
throw\\ 
new\\ %
InvalidOperationException\\ 3
(\\3 4
$"\\4 6
$str\\6 ~
{\\~ 
user	\\ É
.
\\É Ñ
Id
\\Ñ Ü
}
\\Ü á
$str
\\á â
"
\\â ä
)
\\ä ã
;
\\ã å
}]] 
var__ 
result__ 
=__ 
await__ 
_userManager__ +
.__+ ,
AddLoginAsync__, 9
(__9 :
user__: >
,__> ?
info__@ D
)__D E
;__E F
if`` 
(`` 
!`` 
result`` 
.`` 
	Succeeded`` !
)``! "
{aa 
StatusMessagebb 
=bb 
$strbb  |
;bb| }
returncc 
RedirectToPagecc %
(cc% &
)cc& '
;cc' (
}dd 
awaitgg 
HttpContextgg 
.gg 
SignOutAsyncgg *
(gg* +
IdentityConstantsgg+ <
.gg< =
ExternalSchemegg= K
)ggK L
;ggL M
StatusMessageii 
=ii 
$strii ;
;ii; <
returnjj 
RedirectToPagejj !
(jj! "
)jj" #
;jj# $
}kk 	
}ll 
}mm ü.
éD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\GenerateRecoveryCodes.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class &
GenerateRecoveryCodesModel +
:, -
	PageModel. 7
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !&
GenerateRecoveryCodesModel! ;
>; <
_logger= D
;D E
public &
GenerateRecoveryCodesModel )
() *
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< &
GenerateRecoveryCodesModel .
>. /
logger0 6
)6 7
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
)4 5
{   	
var!! 
user!! 
=!! 
await!! 
_userManager!! )
.!!) *
GetUserAsync!!* 6
(!!6 7
User!!7 ;
)!!; <
;!!< =
if"" 
("" 
user"" 
=="" 
null"" 
)"" 
{## 
return$$ 
NotFound$$ 
($$  
$"$$  "
$str$$" ?
{$$? @
_userManager$$@ L
.$$L M
	GetUserId$$M V
($$V W
User$$W [
)$$[ \
}$$\ ]
$str$$] _
"$$_ `
)$$` a
;$$a b
}%% 
var'' 
isTwoFactorEnabled'' "
=''# $
await''% *
_userManager''+ 7
.''7 8$
GetTwoFactorEnabledAsync''8 P
(''P Q
user''Q U
)''U V
;''V W
if(( 
((( 
!(( 
isTwoFactorEnabled(( #
)((# $
{)) 
var** 
userId** 
=** 
await** "
_userManager**# /
.**/ 0
GetUserIdAsync**0 >
(**> ?
user**? C
)**C D
;**D E
throw++ 
new++ %
InvalidOperationException++ 3
(++3 4
$"++4 6
$str++6 g
{++g h
userId++h n
}++n o
$str	++o ñ
"
++ñ ó
)
++ó ò
;
++ò ô
},, 
return.. 
Page.. 
(.. 
).. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
OnPostAsync11) 4
(114 5
)115 6
{22 	
var33 
user33 
=33 
await33 
_userManager33 )
.33) *
GetUserAsync33* 6
(336 7
User337 ;
)33; <
;33< =
if44 
(44 
user44 
==44 
null44 
)44 
{55 
return66 
NotFound66 
(66  
$"66  "
$str66" ?
{66? @
_userManager66@ L
.66L M
	GetUserId66M V
(66V W
User66W [
)66[ \
}66\ ]
$str66] _
"66_ `
)66` a
;66a b
}77 
var99 
isTwoFactorEnabled99 "
=99# $
await99% *
_userManager99+ 7
.997 8$
GetTwoFactorEnabledAsync998 P
(99P Q
user99Q U
)99U V
;99V W
var:: 
userId:: 
=:: 
await:: 
_userManager:: +
.::+ ,
GetUserIdAsync::, :
(::: ;
user::; ?
)::? @
;::@ A
if;; 
(;; 
!;; 
isTwoFactorEnabled;; #
);;# $
{<< 
throw== 
new== %
InvalidOperationException== 3
(==3 4
$"==4 6
$str==6 g
{==g h
userId==h n
}==n o
$str	==o ë
"
==ë í
)
==í ì
;
==ì î
}>> 
var@@ 
recoveryCodes@@ 
=@@ 
await@@  %
_userManager@@& 2
.@@2 32
&GenerateNewTwoFactorRecoveryCodesAsync@@3 Y
(@@Y Z
user@@Z ^
,@@^ _
$num@@` b
)@@b c
;@@c d
RecoveryCodesAA 
=AA 
recoveryCodesAA )
.AA) *
ToArrayAA* 1
(AA1 2
)AA2 3
;AA3 4
_loggerCC 
.CC 
LogInformationCC "
(CC" #
$strCC# b
,CCb c
userIdCCd j
)CCj k
;CCk l
StatusMessageDD 
=DD 
$strDD D
;DDD E
returnEE 
RedirectToPageEE !
(EE! "
$strEE" 7
)EE7 8
;EE8 9
}FF 	
}GG 
}HH ÿ4
~D:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

partial 
class 

IndexModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 

IndexModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public!! 
class!! 

InputModel!! 
{"" 	
[## 
Phone## 
]## 
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ *
)$$* +
]$$+ ,
public%% 
string%% 
PhoneNumber%% %
{%%& '
get%%( +
;%%+ ,
set%%- 0
;%%0 1
}%%2 3
}&& 	
private(( 
async(( 
Task(( 
	LoadAsync(( $
((($ %
IdentityUser((% 1
user((2 6
)((6 7
{)) 	
var** 
userName** 
=** 
await**  
_userManager**! -
.**- .
GetUserNameAsync**. >
(**> ?
user**? C
)**C D
;**D E
var++ 
phoneNumber++ 
=++ 
await++ #
_userManager++$ 0
.++0 1
GetPhoneNumberAsync++1 D
(++D E
user++E I
)++I J
;++J K
Username-- 
=-- 
userName-- 
;--  
Input// 
=// 
new// 

InputModel// "
{00 
PhoneNumber11 
=11 
phoneNumber11 )
}22 
;22 
}33 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (

OnGetAsync55) 3
(553 4
)554 5
{66 	
var77 
user77 
=77 
await77 
_userManager77 )
.77) *
GetUserAsync77* 6
(776 7
User777 ;
)77; <
;77< =
if88 
(88 
user88 
==88 
null88 
)88 
{99 
return:: 
NotFound:: 
(::  
$"::  "
$str::" ?
{::? @
_userManager::@ L
.::L M
	GetUserId::M V
(::V W
User::W [
)::[ \
}::\ ]
$str::] _
"::_ `
)::` a
;::a b
};; 
await== 
	LoadAsync== 
(== 
user==  
)==  !
;==! "
return>> 
Page>> 
(>> 
)>> 
;>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
OnPostAsyncAA) 4
(AA4 5
)AA5 6
{BB 	
varCC 
userCC 
=CC 
awaitCC 
_userManagerCC )
.CC) *
GetUserAsyncCC* 6
(CC6 7
UserCC7 ;
)CC; <
;CC< =
ifDD 
(DD 
userDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
NotFoundFF 
(FF  
$"FF  "
$strFF" ?
{FF? @
_userManagerFF@ L
.FFL M
	GetUserIdFFM V
(FFV W
UserFFW [
)FF[ \
}FF\ ]
$strFF] _
"FF_ `
)FF` a
;FFa b
}GG 
ifII 
(II 
!II 

ModelStateII 
.II 
IsValidII #
)II# $
{JJ 
awaitKK 
	LoadAsyncKK 
(KK  
userKK  $
)KK$ %
;KK% &
returnLL 
PageLL 
(LL 
)LL 
;LL 
}MM 
varOO 
phoneNumberOO 
=OO 
awaitOO #
_userManagerOO$ 0
.OO0 1
GetPhoneNumberAsyncOO1 D
(OOD E
userOOE I
)OOI J
;OOJ K
ifPP 
(PP 
InputPP 
.PP 
PhoneNumberPP !
!=PP" $
phoneNumberPP% 0
)PP0 1
{QQ 
varRR 
setPhoneResultRR "
=RR# $
awaitRR% *
_userManagerRR+ 7
.RR7 8
SetPhoneNumberAsyncRR8 K
(RRK L
userRRL P
,RRP Q
InputRRR W
.RRW X
PhoneNumberRRX c
)RRc d
;RRd e
ifSS 
(SS 
!SS 
setPhoneResultSS #
.SS# $
	SucceededSS$ -
)SS- .
{TT 
StatusMessageUU !
=UU" #
$strUU$ W
;UUW X
returnVV 
RedirectToPageVV )
(VV) *
)VV* +
;VV+ ,
}WW 
}XX 
awaitZZ 
_signInManagerZZ  
.ZZ  !
RefreshSignInAsyncZZ! 3
(ZZ3 4
userZZ4 8
)ZZ8 9
;ZZ9 :
StatusMessage[[ 
=[[ 
$str[[ ;
;[[; <
return\\ 
RedirectToPage\\ !
(\\! "
)\\" #
;\\# $
}]] 	
}^^ 
}__ Ë)
ÄD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
.5 6
Manage6 <
{ 
public		 

static		 
class		 
ManageNavPages		 &
{

 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public 
static 
string 
ChangePassword +
=>, .
$str/ ?
;? @
public 
static 
string  
DownloadPersonalData 1
=>2 4
$str5 K
;K L
public 
static 
string 
DeletePersonalData /
=>0 2
$str3 G
;G H
public 
static 
string 
ExternalLogins +
=>, .
$str/ ?
;? @
public 
static 
string 
PersonalData )
=>* ,
$str- ;
;; <
public 
static 
string #
TwoFactorAuthentication 4
=>5 7
$str8 Q
;Q R
public 
static 
string 
IndexNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Indexa f
)f g
;g h
public 
static 
string 
EmailNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Emaila f
)f g
;g h
public 
static 
string "
ChangePasswordNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ChangePasswordj x
)x y
;y z
public!! 
static!! 
string!! (
DownloadPersonalDataNavClass!! 9
(!!9 :
ViewContext!!: E
viewContext!!F Q
)!!Q R
=>!!S U
PageNavClass!!V b
(!!b c
viewContext!!c n
,!!n o!
DownloadPersonalData	!!p Ñ
)
!!Ñ Ö
;
!!Ö Ü
public## 
static## 
string## &
DeletePersonalDataNavClass## 7
(##7 8
ViewContext##8 C
viewContext##D O
)##O P
=>##Q S
PageNavClass##T `
(##` a
viewContext##a l
,##l m
DeletePersonalData	##n Ä
)
##Ä Å
;
##Å Ç
public%% 
static%% 
string%% "
ExternalLoginsNavClass%% 3
(%%3 4
ViewContext%%4 ?
viewContext%%@ K
)%%K L
=>%%M O
PageNavClass%%P \
(%%\ ]
viewContext%%] h
,%%h i
ExternalLogins%%j x
)%%x y
;%%y z
public'' 
static'' 
string''  
PersonalDataNavClass'' 1
(''1 2
ViewContext''2 =
viewContext''> I
)''I J
=>''K M
PageNavClass''N Z
(''Z [
viewContext''[ f
,''f g
PersonalData''h t
)''t u
;''u v
public)) 
static)) 
string)) +
TwoFactorAuthenticationNavClass)) <
())< =
ViewContext))= H
viewContext))I T
)))T U
=>))V X
PageNavClass))Y e
())e f
viewContext))f q
,))q r$
TwoFactorAuthentication	))s ä
)
))ä ã
;
))ã å
private++ 
static++ 
string++ 
PageNavClass++ *
(++* +
ViewContext+++ 6
viewContext++7 B
,++B C
string++D J
page++K O
)++O P
{,, 	
var-- 

activePage-- 
=-- 
viewContext-- (
.--( )
ViewData--) 1
[--1 2
$str--2 >
]--> ?
as--@ B
string--C I
??.. 
System.. 
... 
IO.. 
... 
Path.. !
...! "'
GetFileNameWithoutExtension.." =
(..= >
viewContext..> I
...I J
ActionDescriptor..J Z
...Z [
DisplayName..[ f
)..f g
;..g h
return// 
string// 
.// 
Equals//  
(//  !

activePage//! +
,//+ ,
page//- 1
,//1 2
StringComparison//3 C
.//C D
OrdinalIgnoreCase//D U
)//U V
?//W X
$str//Y a
://b c
null//d h
;//h i
}00 	
}11 
}22 º
ÖD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\PersonalData.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
.5 6
Manage6 <
{ 
public		 

class		 
PersonalDataModel		 "
:		# $
	PageModel		% .
{

 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
PersonalDataModel! 2
>2 3
_logger4 ;
;; <
public 
PersonalDataModel  
(  !
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
PersonalDataModel %
>% &
logger' -
)- .
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  "
$str" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
$str] _
"_ `
)` a
;a b
} 
return 
Page 
( 
) 
; 
} 	
}   
}!! â#
ãD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class #
ResetAuthenticatorModel (
:) *
	PageModel+ 4
{ 
UserManager 
< 
IdentityUser  
>  !
_userManager" .
;. /
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
ILogger 
< #
ResetAuthenticatorModel '
>' (
_logger) 0
;0 1
public #
ResetAuthenticatorModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
ResetAuthenticatorModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{   	
var!! 
user!! 
=!! 
await!! 
_userManager!! )
.!!) *
GetUserAsync!!* 6
(!!6 7
User!!7 ;
)!!; <
;!!< =
if"" 
("" 
user"" 
=="" 
null"" 
)"" 
{## 
return$$ 
NotFound$$ 
($$  
$"$$  "
$str$$" ?
{$$? @
_userManager$$@ L
.$$L M
	GetUserId$$M V
($$V W
User$$W [
)$$[ \
}$$\ ]
$str$$] _
"$$_ `
)$$` a
;$$a b
}%% 
return'' 
Page'' 
('' 
)'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
OnPostAsync**) 4
(**4 5
)**5 6
{++ 	
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
GetUserAsync,,* 6
(,,6 7
User,,7 ;
),,; <
;,,< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
$"//  "
$str//" ?
{//? @
_userManager//@ L
.//L M
	GetUserId//M V
(//V W
User//W [
)//[ \
}//\ ]
$str//] _
"//_ `
)//` a
;//a b
}00 
await22 
_userManager22 
.22 $
SetTwoFactorEnabledAsync22 7
(227 8
user228 <
,22< =
false22> C
)22C D
;22D E
await33 
_userManager33 
.33 &
ResetAuthenticatorKeyAsync33 9
(339 :
user33: >
)33> ?
;33? @
_logger44 
.44 
LogInformation44 "
(44" #
$str44# d
,44d e
user44f j
.44j k
Id44k m
)44m n
;44n o
await66 
_signInManager66  
.66  !
RefreshSignInAsync66! 3
(663 4
user664 8
)668 9
;669 :
StatusMessage77 
=77 
$str	77 ç
;
77ç é
return99 
RedirectToPage99 !
(99! "
$str99" 9
)999 :
;99: ;
}:: 	
};; 
}<< ˛5
ÑD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class 
SetPasswordModel !
:" #
	PageModel$ -
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
SetPasswordModel 
(  
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
StringLength"" 
("" 
$num"" 
,"" 
ErrorMessage"" +
="", -
$str"". l
,""l m
MinimumLength""n {
=""| }
$num""~ 
)	"" Ä
]
""Ä Å
[## 
DataType## 
(## 
DataType## 
.## 
Password## '
)##' (
]##( )
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ *
)$$* +
]$$+ ,
public%% 
string%% 
NewPassword%% %
{%%& '
get%%( +
;%%+ ,
set%%- 0
;%%0 1
}%%2 3
['' 
DataType'' 
('' 
DataType'' 
.'' 
Password'' '
)''' (
]''( )
[(( 
Display(( 
((( 
Name(( 
=(( 
$str(( 2
)((2 3
]((3 4
[)) 
Compare)) 
()) 
$str)) "
,))" #
ErrorMessage))$ 0
=))1 2
$str))3 m
)))m n
]))n o
public** 
string** 
ConfirmPassword** )
{*** +
get**, /
;**/ 0
set**1 4
;**4 5
}**6 7
}++ 	
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (

OnGetAsync--) 3
(--3 4
)--4 5
{.. 	
var// 
user// 
=// 
await// 
_userManager// )
.//) *
GetUserAsync//* 6
(//6 7
User//7 ;
)//; <
;//< =
if00 
(00 
user00 
==00 
null00 
)00 
{11 
return22 
NotFound22 
(22  
$"22  "
$str22" ?
{22? @
_userManager22@ L
.22L M
	GetUserId22M V
(22V W
User22W [
)22[ \
}22\ ]
$str22] _
"22_ `
)22` a
;22a b
}33 
var55 
hasPassword55 
=55 
await55 #
_userManager55$ 0
.550 1
HasPasswordAsync551 A
(55A B
user55B F
)55F G
;55G H
if77 
(77 
hasPassword77 
)77 
{88 
return99 
RedirectToPage99 %
(99% &
$str99& 8
)998 9
;999 :
}:: 
return<< 
Page<< 
(<< 
)<< 
;<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
OnPostAsync??) 4
(??4 5
)??5 6
{@@ 	
ifAA 
(AA 
!AA 

ModelStateAA 
.AA 
IsValidAA #
)AA# $
{BB 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 
varFF 
userFF 
=FF 
awaitFF 
_userManagerFF )
.FF) *
GetUserAsyncFF* 6
(FF6 7
UserFF7 ;
)FF; <
;FF< =
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
returnII 
NotFoundII 
(II  
$"II  "
$strII" ?
{II? @
_userManagerII@ L
.IIL M
	GetUserIdIIM V
(IIV W
UserIIW [
)II[ \
}II\ ]
$strII] _
"II_ `
)II` a
;IIa b
}JJ 
varLL 
addPasswordResultLL !
=LL" #
awaitLL$ )
_userManagerLL* 6
.LL6 7
AddPasswordAsyncLL7 G
(LLG H
userLLH L
,LLL M
InputLLN S
.LLS T
NewPasswordLLT _
)LL_ `
;LL` a
ifMM 
(MM 
!MM 
addPasswordResultMM "
.MM" #
	SucceededMM# ,
)MM, -
{NN 
foreachOO 
(OO 
varOO 
errorOO "
inOO# %
addPasswordResultOO& 7
.OO7 8
ErrorsOO8 >
)OO> ?
{PP 

ModelStateQQ 
.QQ 
AddModelErrorQQ ,
(QQ, -
stringQQ- 3
.QQ3 4
EmptyQQ4 9
,QQ9 :
errorQQ; @
.QQ@ A
DescriptionQQA L
)QQL M
;QQM N
}RR 
returnSS 
PageSS 
(SS 
)SS 
;SS 
}TT 
awaitVV 
_signInManagerVV  
.VV  !
RefreshSignInAsyncVV! 3
(VV3 4
userVV4 8
)VV8 9
;VV9 :
StatusMessageWW 
=WW 
$strWW 9
;WW9 :
returnYY 
RedirectToPageYY !
(YY! "
)YY" #
;YY# $
}ZZ 	
}[[ 
}\\ ò
äD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\ShowRecoveryCodes.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class "
ShowRecoveryCodesModel '
:( )
	PageModel* 3
{ 
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
IActionResult 
OnGet "
(" #
)# $
{ 	
if 
( 
RecoveryCodes 
==  
null! %
||& (
RecoveryCodes) 6
.6 7
Length7 =
==> @
$numA B
)B C
{ 
return 
RedirectToPage %
(% &
$str& A
)A B
;B C
} 
return 
Page 
( 
) 
; 
} 	
} 
} „,
êD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class (
TwoFactorAuthenticationModel -
:. /
	PageModel0 9
{ 
private 
const 
string !
AuthenicatorUriFormat 2
=3 4
$str5 c
;c d
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !(
TwoFactorAuthenticationModel! =
>= >
_logger? F
;F G
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< (
TwoFactorAuthenticationModel 0
>0 1
logger2 8
)8 9
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
bool 
HasAuthenticator $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
int   
RecoveryCodesLeft   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
["" 	
BindProperty""	 
]"" 
public## 
bool## 
Is2faEnabled##  
{##! "
get### &
;##& '
set##( +
;##+ ,
}##- .
public%% 
bool%% 
IsMachineRemembered%% '
{%%( )
get%%* -
;%%- .
set%%/ 2
;%%2 3
}%%4 5
['' 	
TempData''	 
]'' 
public(( 
string(( 
StatusMessage(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
OnGet**) .
(**. /
)**/ 0
{++ 	
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
GetUserAsync,,* 6
(,,6 7
User,,7 ;
),,; <
;,,< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
$"//  "
$str//" ?
{//? @
_userManager//@ L
.//L M
	GetUserId//M V
(//V W
User//W [
)//[ \
}//\ ]
$str//] _
"//_ `
)//` a
;//a b
}00 
HasAuthenticator22 
=22 
await22 $
_userManager22% 1
.221 2$
GetAuthenticatorKeyAsync222 J
(22J K
user22K O
)22O P
!=22Q S
null22T X
;22X Y
Is2faEnabled33 
=33 
await33  
_userManager33! -
.33- .$
GetTwoFactorEnabledAsync33. F
(33F G
user33G K
)33K L
;33L M
IsMachineRemembered44 
=44  !
await44" '
_signInManager44( 6
.446 7,
 IsTwoFactorClientRememberedAsync447 W
(44W X
user44X \
)44\ ]
;44] ^
RecoveryCodesLeft55 
=55 
await55  %
_userManager55& 2
.552 3#
CountRecoveryCodesAsync553 J
(55J K
user55K O
)55O P
;55P Q
return77 
Page77 
(77 
)77 
;77 
}88 	
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
OnPost::) /
(::/ 0
)::0 1
{;; 	
var<< 
user<< 
=<< 
await<< 
_userManager<< )
.<<) *
GetUserAsync<<* 6
(<<6 7
User<<7 ;
)<<; <
;<<< =
if== 
(== 
user== 
==== 
null== 
)== 
{>> 
return?? 
NotFound?? 
(??  
$"??  "
$str??" ?
{??? @
_userManager??@ L
.??L M
	GetUserId??M V
(??V W
User??W [
)??[ \
}??\ ]
$str??] _
"??_ `
)??` a
;??a b
}@@ 
awaitBB 
_signInManagerBB  
.BB  !&
ForgetTwoFactorClientAsyncBB! ;
(BB; <
)BB< =
;BB= >
StatusMessageCC 
=CC 
$str	CC î
;
CCî ï
returnDD 
RedirectToPageDD !
(DD! "
)DD" #
;DD# $
}EE 	
}FF 
}GG ∞M
zD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
RegisterModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
RegisterModel !
>! "
logger# )
,) *
IEmailSender 
emailSender $
)$ %
{   	
_userManager!! 
=!! 
userManager!! &
;!!& '
_signInManager"" 
="" 
signInManager"" *
;""* +
_logger## 
=## 
logger## 
;## 
_emailSender$$ 
=$$ 
emailSender$$ &
;$$& '
}%% 	
['' 	
BindProperty''	 
]'' 
public(( 

InputModel(( 
Input(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public** 
string** 
	ReturnUrl** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 
IList,, 
<,,  
AuthenticationScheme,, )
>,,) *
ExternalLogins,,+ 9
{,,: ;
get,,< ?
;,,? @
set,,A D
;,,D E
},,F G
public.. 
class.. 

InputModel.. 
{// 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
[22 
Display22 
(22 
Name22 
=22 
$str22 #
)22# $
]22$ %
public33 
string33 
Email33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
[55 
Required55 
]55 
[66 
StringLength66 
(66 
$num66 
,66 
ErrorMessage66 +
=66, -
$str66. l
,66l m
MinimumLength66n {
=66| }
$num66~ 
)	66 Ä
]
66Ä Å
[77 
DataType77 
(77 
DataType77 
.77 
Password77 '
)77' (
]77( )
[88 
Display88 
(88 
Name88 
=88 
$str88 &
)88& '
]88' (
public99 
string99 
Password99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
[;; 
DataType;; 
(;; 
DataType;; 
.;; 
Password;; '
);;' (
];;( )
[<< 
Display<< 
(<< 
Name<< 
=<< 
$str<< .
)<<. /
]<</ 0
[== 
Compare== 
(== 
$str== 
,==  
ErrorMessage==! -
===. /
$str==0 f
)==f g
]==g h
public>> 
string>> 
ConfirmPassword>> )
{>>* +
get>>, /
;>>/ 0
set>>1 4
;>>4 5
}>>6 7
}?? 	
publicAA 
asyncAA 
TaskAA 

OnGetAsyncAA $
(AA$ %
stringAA% +
	returnUrlAA, 5
=AA6 7
nullAA8 <
)AA< =
{BB 	
	ReturnUrlCC 
=CC 
	returnUrlCC !
;CC! "
ExternalLoginsDD 
=DD 
(DD 
awaitDD #
_signInManagerDD$ 2
.DD2 31
%GetExternalAuthenticationSchemesAsyncDD3 X
(DDX Y
)DDY Z
)DDZ [
.DD[ \
ToListDD\ b
(DDb c
)DDc d
;DDd e
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
OnPostAsyncGG) 4
(GG4 5
stringGG5 ;
	returnUrlGG< E
=GGF G
nullGGH L
)GGL M
{HH 	
	returnUrlII 
??=II 
UrlII 
.II 
ContentII %
(II% &
$strII& *
)II* +
;II+ ,
ExternalLoginsJJ 
=JJ 
(JJ 
awaitJJ #
_signInManagerJJ$ 2
.JJ2 31
%GetExternalAuthenticationSchemesAsyncJJ3 X
(JJX Y
)JJY Z
)JJZ [
.JJ[ \
ToListJJ\ b
(JJb c
)JJc d
;JJd e
ifKK 
(KK 

ModelStateKK 
.KK 
IsValidKK "
)KK" #
{LL 
varMM 
userMM 
=MM 
newMM 
IdentityUserMM +
{MM, -
UserNameMM. 6
=MM7 8
InputMM9 >
.MM> ?
EmailMM? D
,MMD E
EmailMMF K
=MML M
InputMMN S
.MMS T
EmailMMT Y
}MMZ [
;MM[ \
varNN 
resultNN 
=NN 
awaitNN "
_userManagerNN# /
.NN/ 0
CreateAsyncNN0 ;
(NN; <
userNN< @
,NN@ A
InputNNB G
.NNG H
PasswordNNH P
)NNP Q
;NNQ R
ifOO 
(OO 
resultOO 
.OO 
	SucceededOO $
)OO$ %
{PP 
_loggerQQ 
.QQ 
LogInformationQQ *
(QQ* +
$strQQ+ V
)QQV W
;QQW X
varSS 
codeSS 
=SS 
awaitSS $
_userManagerSS% 1
.SS1 2/
#GenerateEmailConfirmationTokenAsyncSS2 U
(SSU V
userSSV Z
)SSZ [
;SS[ \
codeTT 
=TT 
WebEncodersTT &
.TT& '
Base64UrlEncodeTT' 6
(TT6 7
EncodingTT7 ?
.TT? @
UTF8TT@ D
.TTD E
GetBytesTTE M
(TTM N
codeTTN R
)TTR S
)TTS T
;TTT U
varUU 
callbackUrlUU #
=UU$ %
UrlUU& )
.UU) *
PageUU* .
(UU. /
$strVV /
,VV/ 0
pageHandlerWW #
:WW# $
nullWW% )
,WW) *
valuesXX 
:XX 
newXX  #
{XX$ %
areaXX& *
=XX+ ,
$strXX- 7
,XX7 8
userIdXX9 ?
=XX@ A
userXXB F
.XXF G
IdXXG I
,XXI J
codeXXK O
=XXP Q
codeXXR V
,XXV W
	returnUrlXXX a
=XXb c
	returnUrlXXd m
}XXn o
,XXo p
protocolYY  
:YY  !
RequestYY" )
.YY) *
SchemeYY* 0
)YY0 1
;YY1 2
await[[ 
_emailSender[[ &
.[[& '
SendEmailAsync[[' 5
([[5 6
Input[[6 ;
.[[; <
Email[[< A
,[[A B
$str[[C W
,[[W X
$"\\ 
$str\\ B
{\\B C
HtmlEncoder\\C N
.\\N O
Default\\O V
.\\V W
Encode\\W ]
(\\] ^
callbackUrl\\^ i
)\\i j
}\\j k
$str\\k 
"	\\ Ä
)
\\Ä Å
;
\\Å Ç
if^^ 
(^^ 
_userManager^^ $
.^^$ %
Options^^% ,
.^^, -
SignIn^^- 3
.^^3 4#
RequireConfirmedAccount^^4 K
)^^K L
{__ 
return`` 
RedirectToPage`` -
(``- .
$str``. D
,``D E
new``F I
{``J K
email``L Q
=``R S
Input``T Y
.``Y Z
Email``Z _
,``_ `
	returnUrl``a j
=``k l
	returnUrl``m v
}``w x
)``x y
;``y z
}aa 
elsebb 
{cc 
awaitdd 
_signInManagerdd ,
.dd, -
SignInAsyncdd- 8
(dd8 9
userdd9 =
,dd= >
isPersistentdd? K
:ddK L
falseddM R
)ddR S
;ddS T
returnee 
LocalRedirectee ,
(ee, -
	returnUrlee- 6
)ee6 7
;ee7 8
}ff 
}gg 
foreachhh 
(hh 
varhh 
errorhh "
inhh# %
resulthh& ,
.hh, -
Errorshh- 3
)hh3 4
{ii 

ModelStatejj 
.jj 
AddModelErrorjj ,
(jj, -
stringjj- 3
.jj3 4
Emptyjj4 9
,jj9 :
errorjj; @
.jj@ A
DescriptionjjA L
)jjL M
;jjM N
}kk 
}ll 
returnoo 
Pageoo 
(oo 
)oo 
;oo 
}pp 	
}qq 
}rr î$
ÜD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\RegisterConfirmation.cshtml.cs
	namespace

 	
WebApplication


 
.

 
Areas

 
.

 
Identity

 '
.

' (
Pages

( -
.

- .
Account

. 5
{ 
[ 
AllowAnonymous 
] 
public 

class %
RegisterConfirmationModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_sender& -
;- .
public %
RegisterConfirmationModel (
(( )
UserManager) 4
<4 5
IdentityUser5 A
>A B
userManagerC N
,N O
IEmailSenderP \
sender] c
)c d
{ 	
_userManager 
= 
userManager &
;& '
_sender 
= 
sender 
; 
} 	
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool %
DisplayConfirmAccountLink -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string  
EmailConfirmationUrl *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
email; @
,@ A
stringB H
	returnUrlI R
=S T
nullU Y
)Y Z
{ 	
if   
(   
email   
==   
null   
)   
{!! 
return"" 
RedirectToPage"" %
(""% &
$str""& .
)"". /
;""/ 0
}## 
var%% 
user%% 
=%% 
await%% 
_userManager%% )
.%%) *
FindByEmailAsync%%* :
(%%: ;
email%%; @
)%%@ A
;%%A B
if&& 
(&& 
user&& 
==&& 
null&& 
)&& 
{'' 
return(( 
NotFound(( 
(((  
$"((  "
$str((" B
{((B C
email((C H
}((H I
$str((I K
"((K L
)((L M
;((M N
})) 
Email++ 
=++ 
email++ 
;++ %
DisplayConfirmAccountLink-- %
=--& '
true--( ,
;--, -
if.. 
(.. %
DisplayConfirmAccountLink.. )
)..) *
{// 
var00 
userId00 
=00 
await00 "
_userManager00# /
.00/ 0
GetUserIdAsync000 >
(00> ?
user00? C
)00C D
;00D E
var11 
code11 
=11 
await11  
_userManager11! -
.11- ./
#GenerateEmailConfirmationTokenAsync11. Q
(11Q R
user11R V
)11V W
;11W X
code22 
=22 
WebEncoders22 "
.22" #
Base64UrlEncode22# 2
(222 3
Encoding223 ;
.22; <
UTF822< @
.22@ A
GetBytes22A I
(22I J
code22J N
)22N O
)22O P
;22P Q 
EmailConfirmationUrl33 $
=33% &
Url33' *
.33* +
Page33+ /
(33/ 0
$str44 +
,44+ ,
pageHandler55 
:55  
null55! %
,55% &
values66 
:66 
new66 
{66  !
area66" &
=66' (
$str66) 3
,663 4
userId665 ;
=66< =
userId66> D
,66D E
code66F J
=66K L
code66M Q
,66Q R
	returnUrl66S \
=66] ^
	returnUrl66_ h
}66i j
,66j k
protocol77 
:77 
Request77 %
.77% &
Scheme77& ,
)77, -
;77- .
}88 
return:: 
Page:: 
(:: 
):: 
;:: 
};; 	
}<< 
}== Ó'
âD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\ResendEmailConfirmation.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class (
ResendEmailConfirmationModel -
:. /
	PageModel0 9
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public (
ResendEmailConfirmationModel +
(+ ,
UserManager, 7
<7 8
IdentityUser8 D
>D E
userManagerF Q
,Q R
IEmailSenderS _
emailSender` k
)k l
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
EmailAddress"" 
]"" 
public## 
string## 
Email## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
}$$ 	
public&& 
void&& 
OnGet&& 
(&& 
)&& 
{'' 	
}(( 	
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
OnPostAsync**) 4
(**4 5
)**5 6
{++ 	
if,, 
(,, 
!,, 

ModelState,, 
.,, 
IsValid,, #
),,# $
{-- 
return.. 
Page.. 
(.. 
).. 
;.. 
}// 
var11 
user11 
=11 
await11 
_userManager11 )
.11) *
FindByEmailAsync11* :
(11: ;
Input11; @
.11@ A
Email11A F
)11F G
;11G H
if22 
(22 
user22 
==22 
null22 
)22 
{33 

ModelState44 
.44 
AddModelError44 (
(44( )
string44) /
.44/ 0
Empty440 5
,445 6
$str447 j
)44j k
;44k l
return55 
Page55 
(55 
)55 
;55 
}66 
var88 
userId88 
=88 
await88 
_userManager88 +
.88+ ,
GetUserIdAsync88, :
(88: ;
user88; ?
)88? @
;88@ A
var99 
code99 
=99 
await99 
_userManager99 )
.99) */
#GenerateEmailConfirmationTokenAsync99* M
(99M N
user99N R
)99R S
;99S T
code:: 
=:: 
WebEncoders:: 
.:: 
Base64UrlEncode:: .
(::. /
Encoding::/ 7
.::7 8
UTF8::8 <
.::< =
GetBytes::= E
(::E F
code::F J
)::J K
)::K L
;::L M
var;; 
callbackUrl;; 
=;; 
Url;; !
.;;! "
Page;;" &
(;;& '
$str<< '
,<<' (
pageHandler== 
:== 
null== !
,==! "
values>> 
:>> 
new>> 
{>> 
userId>> $
=>>% &
userId>>' -
,>>- .
code>>/ 3
=>>4 5
code>>6 :
}>>; <
,>>< =
protocol?? 
:?? 
Request?? !
.??! "
Scheme??" (
)??( )
;??) *
await@@ 
_emailSender@@ 
.@@ 
SendEmailAsync@@ -
(@@- .
InputAA 
.AA 
EmailAA 
,AA 
$strBB $
,BB$ %
$"CC 
$strCC :
{CC: ;
HtmlEncoderCC; F
.CCF G
DefaultCCG N
.CCN O
EncodeCCO U
(CCU V
callbackUrlCCV a
)CCa b
}CCb c
$strCCc w
"CCw x
)CCx y
;CCy z

ModelStateEE 
.EE 
AddModelErrorEE $
(EE$ %
stringEE% +
.EE+ ,
EmptyEE, 1
,EE1 2
$strEE3 f
)EEf g
;EEg h
returnFF 
PageFF 
(FF 
)FF 
;FF 
}GG 	
}HH 
}II ë.
D:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\ResetPassword.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{ 
[ 
AllowAnonymous 
] 
public 

class 
ResetPasswordModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ResetPasswordModel !
(! "
UserManager" -
<- .
IdentityUser. :
>: ;
userManager< G
)G H
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[ 
Required 
] 
[ 
EmailAddress 
] 
public   
string   
Email   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
["" 
Required"" 
]"" 
[## 
StringLength## 
(## 
$num## 
,## 
ErrorMessage## +
=##, -
$str##. l
,##l m
MinimumLength##n {
=##| }
$num##~ 
)	## Ä
]
##Ä Å
[$$ 
DataType$$ 
($$ 
DataType$$ 
.$$ 
Password$$ '
)$$' (
]$$( )
public%% 
string%% 
Password%% "
{%%# $
get%%% (
;%%( )
set%%* -
;%%- .
}%%/ 0
['' 
DataType'' 
('' 
DataType'' 
.'' 
Password'' '
)''' (
]''( )
[(( 
Display(( 
((( 
Name(( 
=(( 
$str(( .
)((. /
]((/ 0
[)) 
Compare)) 
()) 
$str)) 
,))  
ErrorMessage))! -
=)). /
$str))0 f
)))f g
]))g h
public** 
string** 
ConfirmPassword** )
{*** +
get**, /
;**/ 0
set**1 4
;**4 5
}**6 7
public,, 
string,, 
Code,, 
{,,  
get,,! $
;,,$ %
set,,& )
;,,) *
},,+ ,
}-- 	
public// 
IActionResult// 
OnGet// "
(//" #
string//# )
code//* .
=/// 0
null//1 5
)//5 6
{00 	
if11 
(11 
code11 
==11 
null11 
)11 
{22 
return33 

BadRequest33 !
(33! "
$str33" O
)33O P
;33P Q
}44 
else55 
{66 
Input77 
=77 
new77 

InputModel77 &
{88 
Code99 
=99 
Encoding99 #
.99# $
UTF899$ (
.99( )
	GetString99) 2
(992 3
WebEncoders993 >
.99> ?
Base64UrlDecode99? N
(99N O
code99O S
)99S T
)99T U
}:: 
;:: 
return;; 
Page;; 
(;; 
);; 
;;; 
}<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
OnPostAsync??) 4
(??4 5
)??5 6
{@@ 	
ifAA 
(AA 
!AA 

ModelStateAA 
.AA 
IsValidAA #
)AA# $
{BB 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 
varFF 
userFF 
=FF 
awaitFF 
_userManagerFF )
.FF) *
FindByEmailAsyncFF* :
(FF: ;
InputFF; @
.FF@ A
EmailFFA F
)FFF G
;FFG H
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
returnJJ 
RedirectToPageJJ %
(JJ% &
$strJJ& C
)JJC D
;JJD E
}KK 
varMM 
resultMM 
=MM 
awaitMM 
_userManagerMM +
.MM+ ,
ResetPasswordAsyncMM, >
(MM> ?
userMM? C
,MMC D
InputMME J
.MMJ K
CodeMMK O
,MMO P
InputMMQ V
.MMV W
PasswordMMW _
)MM_ `
;MM` a
ifNN 
(NN 
resultNN 
.NN 
	SucceededNN  
)NN  !
{OO 
returnPP 
RedirectToPagePP %
(PP% &
$strPP& C
)PPC D
;PPD E
}QQ 
foreachSS 
(SS 
varSS 
errorSS 
inSS !
resultSS" (
.SS( )
ErrorsSS) /
)SS/ 0
{TT 

ModelStateUU 
.UU 
AddModelErrorUU (
(UU( )
stringUU) /
.UU/ 0
EmptyUU0 5
,UU5 6
errorUU7 <
.UU< =
DescriptionUU= H
)UUH I
;UUI J
}VV 
returnWW 
PageWW 
(WW 
)WW 
;WW 
}XX 	
}YY 
}ZZ ¨
ãD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
	namespace 	
WebApplication
 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
{		 
[

 
AllowAnonymous

 
]

 
public 

class *
ResetPasswordConfirmationModel /
:0 1
	PageModel2 ;
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ©
kD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\AccountController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{		 
public

 

class

 
AccountController

 "
:

# $

Controller

% /
{ 
private 
readonly  
ApplicationDbContext -

_dbContext. 8
;8 9
public 
AccountController  
(  ! 
ApplicationDbContext! 5
	dbContext6 ?
)? @
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
MyBankAccountUnsafe 0
(0 1
string1 7
id8 :
): ;
{ 	
return 
View 
( 
$str '
,' (

_dbContext 
. 
Set 
< 
Account &
>& '
(' (
)( )
.) *

FromSqlRaw* 4
(4 5
$"5 7
$str7 Y
{Y Z
idZ \
}\ ]
$str] ^
"^ _
)_ `
.` a
ToLista g
(g h
)h i
)i j
;j k
} 	
public 
IActionResult 
MyBankAccountSafe .
(. /
int/ 2
id3 5
)5 6
{ 	
return   
View   
(   
$str   '
,  ' (
new  ) ,
List  - 1
<  1 2
Account  2 9
>  9 :
(  : ;
)  ; <
{  = >

_dbContext  ? I
.  I J
Find  J N
<  N O
Account  O V
>  V W
(  W X
id  X Z
)  Z [
}  \ ]
)  ] ^
;  ^ _
}!! 	
public## 
IActionResult## %
MyBankAccountSafeStringEf## 6
(##6 7
string##7 =
id##> @
)##@ A
{$$ 	
return%% 
View%% 
(%% 
$str%% '
,%%' (
new%%) ,
List%%- 1
<%%1 2
Account%%2 9
>%%9 :
(%%: ;
)%%; <
{%%= >

_dbContext%%? I
.%%I J
Find%%J N
<%%N O
Account%%O V
>%%V W
(%%W X
id%%X Z
)%%Z [
}%%\ ]
)%%] ^
;%%^ _
}&& 	
public(( 
IActionResult(( 1
%MyBankAccountSafeStringEfInterpolated(( B
(((B C
string((C I
id((J L
)((L M
{)) 	
return** 
View** 
(** 
$str** '
,**' (

_dbContext++ 
.++ 
Set++ 
<++ 
Account++ &
>++& '
(++' (
)++( )
.++) *
FromSqlInterpolated++* =
(++= >
$"++> @
$str++@ b
{++b c
id++c e
}++e f
$str++f g
"++g h
)++h i
.++i j
ToList++j p
(++p q
)++q r
)++r s
;++s t
},, 	
}-- 
}.. ◊
nD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\AllOfRolesController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{ 
[ 
	Authorize 
( 
Roles 
= 
$str #
)# $
]$ %
[ 
	Authorize 
( 
Roles 
= 
$str 
) 
] 
public 

class  
AllOfRolesController %
:& '

Controller( 2
{		 
public

  
AllOfRolesController

 #
(

# $
)

$ %
{ 	
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
Content 
( 
$str -
)- .
;. /
} 	
} 
} ¢
hD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\CorsController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{ 
public 

class 
CorsController 
:  !

Controller" ,
{ 
public 
CorsController 
( 
) 
{ 	
}		 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
} 
} á
hD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\HomeController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{ 
public 

class 
HomeController 
:  !

Controller" ,
{		 
private

 
readonly

 
ILogger

  
<

  !
HomeController

! /
>

/ 0
_logger

1 8
;

8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
}   
}!! ª	
mD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\OneOfRoleController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{ 
[ 
	Authorize 
( 
Roles 
= 
$str &
)& '
]' (
public 

class 
OneOfRoleController $
:% &

Controller' 1
{ 
public		 
OneOfRoleController		 "
(		" #
)		# $
{

 	
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
Content 
( 
$str -
)- .
;. /
} 	
[ 	
	Authorize	 
( 
Roles 
= 
$str '
)' (
]( )
public 
IActionResult 
Index2 #
(# $
)$ %
{ 	
return 
Content 
( 
$str '
)' (
;( )
} 	
} 
} •
iD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\RolesController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{ 
public 

class 
RolesController  
:! "

Controller# -
{ 
public 
RolesController 
( 
)  
{ 	
}		 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
} 
} Ò
jD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\SalaryController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{ 
public 

class 
SalaryController !
:" #

Controller$ .
{ 
public 
SalaryController 
(  
)  !
{		 	
}

 	
[ 	
	Authorize	 
( 
$str 
) 
] 
public 
IActionResult 
SalaryR $
($ %
)% &
{ 	
return 
Content 
( 
$str $
)$ %
;% &
} 	
[ 	
	Authorize	 
( 
$str 
) 
] 
public 
IActionResult 
SalaryW $
($ %
)% &
{ 	
return 
Content 
( 
$str $
)$ %
;% &
} 	
} 
} µ
nD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\SingleRoleController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{ 
[ 
	Authorize 
( 
Roles 
= 
$str #
)# $
]$ %
public 

class  
SingleRoleController %
:& '

Controller( 2
{		 
public

  
SingleRoleController

 #
(

# $
)

$ %
{ 	
} 	
public 
IActionResult 
Index "
(" #
)# $
=>% '
Content( /
(/ 0
$str0 B
)B C
;C D
[ 	
AllowAnonymous	 
] 
public 
IActionResult 
IndexAnonymous +
(+ ,
), -
=>. 0
Content1 8
(8 9
$str9 I
)I J
;J K
} 
} ≥
gD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Controllers\XssController.cs
	namespace 	
WebApplication
 
. 
Controllers $
{ 
public 

class 
XssController 
:  

Controller! +
{		 
private

 
readonly

 
ILogger

  
<

  !
XssController

! .
>

. /
_logger

0 7
;

7 8
public 
XssController 
( 
ILogger $
<$ %
XssController% 2
>2 3
logger4 :
): ;
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
Index 
( 
new 
User !
(! "
)" #
)# $
;$ %
} 	
[ 	
HttpPost	 
] 
public 
IActionResult 
Index "
(" #
User# '
user( ,
), -
{ 	
return 
View 
( 
user 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
IActionResult 
IndexSanitized +
(+ ,
User, 0
user1 5
)5 6
{ 	
user 
. 
Username 
= 
new 
HtmlSanitizer  -
(- .
). /
./ 0
Sanitize0 8
(8 9
user9 =
.= >
Username> F
)F G
;G H
return   
View   
(   
$str   
,    
user  ! %
)  % &
;  & '
}!! 	
public## 
IActionResult## 
UnsafeJs## %
(##% &
int##& )
userId##* 0
)##0 1
{$$ 	
return%% 
View%% 
(%% 
new%% 
User%%  
{%%! "
UserId%%# )
=%%* +
userId%%, 2
}%%3 4
)%%4 5
;%%5 6
}&& 	
[(( 	
HttpPost((	 
](( 
public)) 
IActionResult)) 
UnsafeJs)) %
())% &
User))& *
model))+ 0
)))0 1
{** 	
return++ 
RedirectToAction++ #
(++# $
$str++$ .
,++. /
new++0 3
{++4 5
userId++6 <
=++= >
model++? D
.++D E
UserId++E K
}++L M
)++M N
;++N O
},, 	
}-- 
}.. µ
gD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Data\ApplicationDbContext.cs
	namespace 	
WebApplication
 
. 
Data 
{		 
public

 

class

  
ApplicationDbContext

 %
:

& '
IdentityDbContext

( 9
{ 
public 
DbSet 
< 
Account 
> 
Accounts &
;& '
public  
ApplicationDbContext #
(# $
DbContextOptions$ 4
<4 5 
ApplicationDbContext5 I
>I J
optionsK R
)R S
: 
base 
( 
options 
) 
{ 	
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
builder= D
)D E
{ 	
builder 
. 
Entity 
< 
Account "
>" #
(# $
)$ %
.% &
HasData& -
(- .
new 
Account 
( 
) 
{ 
Id  "
=# $
$num% &
,& '
Balance( /
=0 1
$num2 :
,: ;
Number< B
=C D
$strE P
}Q R
,R S
new 
Account 
( 
) 
{ 
Id  "
=# $
$num% &
,& '
Balance( /
=0 1
$num2 ;
,; <
Number= C
=D E
$strF Q
}R S
,S T
new 
Account 
( 
) 
{ 
Id  "
=# $
$num% &
,& '
Balance( /
=0 1
$num2 <
,< =
Number> D
=E F
$strG Q
}R S
) 
; 
base 
. 
OnModelCreating  
(  !
builder! (
)( )
;) *
} 	
} 
} ∆	
cD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Data\Entities\Account.cs
	namespace 	
WebApplication
 
. 
Data 
. 
Entities &
{ 
public 

class 
Account 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
decimal 
Balance 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Number 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
override		 
string		 
ToString		 '
(		' (
)		( )
{

 	
return 
$" 
$str  
{  !
Number! '
}' (
$str( +
{+ ,
Id, .
}. /
$str/ A
{A B
BalanceB I
}I J
$strJ K
"K L
;L M
} 	
} 
} ¥≥
ÅD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Data\Migrations\00000000000000_CreateIdentitySchema.cs
	namespace 	
WebApplication
 
. 
Data 
. 

Migrations (
{ 
public 

partial 
class  
CreateIdentitySchema -
:. /
	Migration0 9
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{& '
table( -
.- .

PrimaryKey. 8
(8 9
$str9 I
,I J
xK L
=>M O
xP Q
.Q R
IdR T
)T U
;U V
}W X
)X Y
;Y Z
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
	maxLength1 :
:: ;
$num< ?
,? @
nullableA I
:I J
trueK O
)O P
,P Q
NormalizedEmail #
=$ %
table& +
.+ ,
Column, 2
<2 3
string3 9
>9 :
(: ;
	maxLength; D
:D E
$numF I
,I J
nullableK S
:S T
trueU Y
)Y Z
,Z [
EmailConfirmed "
=# $
table% *
.* +
Column+ 1
<1 2
bool2 6
>6 7
(7 8
nullable8 @
:@ A
falseB G
)G H
,H I
PasswordHash  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
nullable8 @
:@ A
trueB F
)F G
,G H
SecurityStamp   !
=  " #
table  $ )
.  ) *
Column  * 0
<  0 1
string  1 7
>  7 8
(  8 9
nullable  9 A
:  A B
true  C G
)  G H
,  H I
ConcurrencyStamp!! $
=!!% &
table!!' ,
.!!, -
Column!!- 3
<!!3 4
string!!4 :
>!!: ;
(!!; <
nullable!!< D
:!!D E
true!!F J
)!!J K
,!!K L
PhoneNumber"" 
=""  !
table""" '
.""' (
Column""( .
<"". /
string""/ 5
>""5 6
(""6 7
nullable""7 ?
:""? @
true""A E
)""E F
,""F G 
PhoneNumberConfirmed## (
=##) *
table##+ 0
.##0 1
Column##1 7
<##7 8
bool##8 <
>##< =
(##= >
nullable##> F
:##F G
false##H M
)##M N
,##N O
TwoFactorEnabled$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
bool$$4 8
>$$8 9
($$9 :
nullable$$: B
:$$B C
false$$D I
)$$I J
,$$J K

LockoutEnd%% 
=%%  
table%%! &
.%%& '
Column%%' -
<%%- .
DateTimeOffset%%. <
>%%< =
(%%= >
nullable%%> F
:%%F G
true%%H L
)%%L M
,%%M N
LockoutEnabled&& "
=&&# $
table&&% *
.&&* +
Column&&+ 1
<&&1 2
bool&&2 6
>&&6 7
(&&7 8
nullable&&8 @
:&&@ A
false&&B G
)&&G H
,&&H I
AccessFailedCount'' %
=''& '
table''( -
.''- .
Column''. 4
<''4 5
int''5 8
>''8 9
(''9 :
nullable'': B
:''B C
false''D I
)''I J
}(( 
,(( 
constraints)) 
:)) 
table)) "
=>))# %
{))& '
table))( -
.))- .

PrimaryKey)). 8
())8 9
$str))9 I
,))I J
x))K L
=>))M O
x))P Q
.))Q R
Id))R T
)))T U
;))U V
}))W X
)))X Y
;))Y Z
migrationBuilder++ 
.++ 
CreateTable++ (
(++( )
name,, 
:,, 
$str,, (
,,,( )
columns-- 
:-- 
table-- 
=>-- !
new--" %
{.. 
Id// 
=// 
table// 
.// 
Column// %
<//% &
int//& )
>//) *
(//* +
nullable//+ 3
://3 4
false//5 :
)//: ;
.00 

Annotation00 #
(00# $
$str00$ :
,00: ;
true00< @
)00@ A
,00A B
RoleId11 
=11 
table11 "
.11" #
Column11# )
<11) *
string11* 0
>110 1
(111 2
nullable112 :
:11: ;
false11< A
)11A B
,11B C
	ClaimType22 
=22 
table22  %
.22% &
Column22& ,
<22, -
string22- 3
>223 4
(224 5
nullable225 =
:22= >
true22? C
)22C D
,22D E

ClaimValue33 
=33  
table33! &
.33& '
Column33' -
<33- .
string33. 4
>334 5
(335 6
nullable336 >
:33> ?
true33@ D
)33D E
}44 
,44 
constraints55 
:55 
table55 "
=>55# %
{66 
table77 
.77 

PrimaryKey77 $
(77$ %
$str77% :
,77: ;
x77< =
=>77> @
x77A B
.77B C
Id77C E
)77E F
;77F G
table88 
.88 

ForeignKey88 $
(88$ %
name99 
:99 
$str99 F
,99F G
column:: 
::: 
x::  !
=>::" $
x::% &
.::& '
RoleId::' -
,::- .
principalTable;; &
:;;& '
$str;;( 5
,;;5 6
principalColumn<< '
:<<' (
$str<<) -
,<<- .
onDelete==  
:==  !
ReferentialAction==" 3
.==3 4
Cascade==4 ;
)==; <
;==< =
}>> 
)>> 
;>> 
migrationBuilder@@ 
.@@ 
CreateTable@@ (
(@@( )
nameAA 
:AA 
$strAA (
,AA( )
columnsBB 
:BB 
tableBB 
=>BB !
newBB" %
{CC 
IdDD 
=DD 
tableDD 
.DD 
ColumnDD %
<DD% &
intDD& )
>DD) *
(DD* +
nullableDD+ 3
:DD3 4
falseDD5 :
)DD: ;
.EE 

AnnotationEE #
(EE# $
$strEE$ :
,EE: ;
trueEE< @
)EE@ A
,EEA B
UserIdFF 
=FF 
tableFF "
.FF" #
ColumnFF# )
<FF) *
stringFF* 0
>FF0 1
(FF1 2
nullableFF2 :
:FF: ;
falseFF< A
)FFA B
,FFB C
	ClaimTypeGG 
=GG 
tableGG  %
.GG% &
ColumnGG& ,
<GG, -
stringGG- 3
>GG3 4
(GG4 5
nullableGG5 =
:GG= >
trueGG? C
)GGC D
,GGD E

ClaimValueHH 
=HH  
tableHH! &
.HH& '
ColumnHH' -
<HH- .
stringHH. 4
>HH4 5
(HH5 6
nullableHH6 >
:HH> ?
trueHH@ D
)HHD E
}II 
,II 
constraintsJJ 
:JJ 
tableJJ "
=>JJ# %
{KK 
tableLL 
.LL 

PrimaryKeyLL $
(LL$ %
$strLL% :
,LL: ;
xLL< =
=>LL> @
xLLA B
.LLB C
IdLLC E
)LLE F
;LLF G
tableMM 
.MM 

ForeignKeyMM $
(MM$ %
nameNN 
:NN 
$strNN F
,NNF G
columnOO 
:OO 
xOO  !
=>OO" $
xOO% &
.OO& '
UserIdOO' -
,OO- .
principalTablePP &
:PP& '
$strPP( 5
,PP5 6
principalColumnQQ '
:QQ' (
$strQQ) -
,QQ- .
onDeleteRR  
:RR  !
ReferentialActionRR" 3
.RR3 4
CascadeRR4 ;
)RR; <
;RR< =
}SS 
)SS 
;SS 
migrationBuilderUU 
.UU 
CreateTableUU (
(UU( )
nameVV 
:VV 
$strVV (
,VV( )
columnsWW 
:WW 
tableWW 
=>WW !
newWW" %
{XX 
LoginProviderYY !
=YY" #
tableYY$ )
.YY) *
ColumnYY* 0
<YY0 1
stringYY1 7
>YY7 8
(YY8 9
	maxLengthYY9 B
:YYB C
$numYYD G
,YYG H
nullableYYI Q
:YYQ R
falseYYS X
)YYX Y
,YYY Z
ProviderKeyZZ 
=ZZ  !
tableZZ" '
.ZZ' (
ColumnZZ( .
<ZZ. /
stringZZ/ 5
>ZZ5 6
(ZZ6 7
	maxLengthZZ7 @
:ZZ@ A
$numZZB E
,ZZE F
nullableZZG O
:ZZO P
falseZZQ V
)ZZV W
,ZZW X
ProviderDisplayName[[ '
=[[( )
table[[* /
.[[/ 0
Column[[0 6
<[[6 7
string[[7 =
>[[= >
([[> ?
nullable[[? G
:[[G H
true[[I M
)[[M N
,[[N O
UserId\\ 
=\\ 
table\\ "
.\\" #
Column\\# )
<\\) *
string\\* 0
>\\0 1
(\\1 2
nullable\\2 :
:\\: ;
false\\< A
)\\A B
}]] 
,]] 
constraints^^ 
:^^ 
table^^ "
=>^^# %
{__ 
table`` 
.`` 

PrimaryKey`` $
(``$ %
$str``% :
,``: ;
x``< =
=>``> @
new``A D
{``E F
x``G H
.``H I
LoginProvider``I V
,``V W
x``X Y
.``Y Z
ProviderKey``Z e
}``f g
)``g h
;``h i
tableaa 
.aa 

ForeignKeyaa $
(aa$ %
namebb 
:bb 
$strbb F
,bbF G
columncc 
:cc 
xcc  !
=>cc" $
xcc% &
.cc& '
UserIdcc' -
,cc- .
principalTabledd &
:dd& '
$strdd( 5
,dd5 6
principalColumnee '
:ee' (
$stree) -
,ee- .
onDeleteff  
:ff  !
ReferentialActionff" 3
.ff3 4
Cascadeff4 ;
)ff; <
;ff< =
}gg 
)gg 
;gg 
migrationBuilderii 
.ii 
CreateTableii (
(ii( )
namejj 
:jj 
$strjj '
,jj' (
columnskk 
:kk 
tablekk 
=>kk !
newkk" %
{ll 
UserIdmm 
=mm 
tablemm "
.mm" #
Columnmm# )
<mm) *
stringmm* 0
>mm0 1
(mm1 2
nullablemm2 :
:mm: ;
falsemm< A
)mmA B
,mmB C
RoleIdnn 
=nn 
tablenn "
.nn" #
Columnnn# )
<nn) *
stringnn* 0
>nn0 1
(nn1 2
nullablenn2 :
:nn: ;
falsenn< A
)nnA B
}oo 
,oo 
constraintspp 
:pp 
tablepp "
=>pp# %
{qq 
tablerr 
.rr 

PrimaryKeyrr $
(rr$ %
$strrr% 9
,rr9 :
xrr; <
=>rr= ?
newrr@ C
{rrD E
xrrF G
.rrG H
UserIdrrH N
,rrN O
xrrP Q
.rrQ R
RoleIdrrR X
}rrY Z
)rrZ [
;rr[ \
tabless 
.ss 

ForeignKeyss $
(ss$ %
namett 
:tt 
$strtt E
,ttE F
columnuu 
:uu 
xuu  !
=>uu" $
xuu% &
.uu& '
RoleIduu' -
,uu- .
principalTablevv &
:vv& '
$strvv( 5
,vv5 6
principalColumnww '
:ww' (
$strww) -
,ww- .
onDeletexx  
:xx  !
ReferentialActionxx" 3
.xx3 4
Cascadexx4 ;
)xx; <
;xx< =
tableyy 
.yy 

ForeignKeyyy $
(yy$ %
namezz 
:zz 
$strzz E
,zzE F
column{{ 
:{{ 
x{{  !
=>{{" $
x{{% &
.{{& '
UserId{{' -
,{{- .
principalTable|| &
:||& '
$str||( 5
,||5 6
principalColumn}} '
:}}' (
$str}}) -
,}}- .
onDelete~~  
:~~  !
ReferentialAction~~" 3
.~~3 4
Cascade~~4 ;
)~~; <
;~~< =
} 
) 
; 
migrationBuilder
ÅÅ 
.
ÅÅ 
CreateTable
ÅÅ (
(
ÅÅ( )
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ (
,
ÇÇ( )
columns
ÉÉ 
:
ÉÉ 
table
ÉÉ 
=>
ÉÉ !
new
ÉÉ" %
{
ÑÑ 
UserId
ÖÖ 
=
ÖÖ 
table
ÖÖ "
.
ÖÖ" #
Column
ÖÖ# )
<
ÖÖ) *
string
ÖÖ* 0
>
ÖÖ0 1
(
ÖÖ1 2
nullable
ÖÖ2 :
:
ÖÖ: ;
false
ÖÖ< A
)
ÖÖA B
,
ÖÖB C
LoginProvider
ÜÜ !
=
ÜÜ" #
table
ÜÜ$ )
.
ÜÜ) *
Column
ÜÜ* 0
<
ÜÜ0 1
string
ÜÜ1 7
>
ÜÜ7 8
(
ÜÜ8 9
	maxLength
ÜÜ9 B
:
ÜÜB C
$num
ÜÜD G
,
ÜÜG H
nullable
ÜÜI Q
:
ÜÜQ R
false
ÜÜS X
)
ÜÜX Y
,
ÜÜY Z
Name
áá 
=
áá 
table
áá  
.
áá  !
Column
áá! '
<
áá' (
string
áá( .
>
áá. /
(
áá/ 0
	maxLength
áá0 9
:
áá9 :
$num
áá; >
,
áá> ?
nullable
áá@ H
:
ááH I
false
ááJ O
)
ááO P
,
ááP Q
Value
àà 
=
àà 
table
àà !
.
àà! "
Column
àà" (
<
àà( )
string
àà) /
>
àà/ 0
(
àà0 1
nullable
àà1 9
:
àà9 :
true
àà; ?
)
àà? @
}
ââ 
,
ââ 
constraints
ää 
:
ää 
table
ää "
=>
ää# %
{
ãã 
table
åå 
.
åå 

PrimaryKey
åå $
(
åå$ %
$str
åå% :
,
åå: ;
x
åå< =
=>
åå> @
new
ååA D
{
ååE F
x
ååG H
.
ååH I
UserId
ååI O
,
ååO P
x
ååQ R
.
ååR S
LoginProvider
ååS `
,
åå` a
x
ååb c
.
ååc d
Name
ååd h
}
ååi j
)
ååj k
;
ååk l
table
çç 
.
çç 

ForeignKey
çç $
(
çç$ %
name
éé 
:
éé 
$str
éé F
,
ééF G
column
èè 
:
èè 
x
èè  !
=>
èè" $
x
èè% &
.
èè& '
UserId
èè' -
,
èè- .
principalTable
êê &
:
êê& '
$str
êê( 5
,
êê5 6
principalColumn
ëë '
:
ëë' (
$str
ëë) -
,
ëë- .
onDelete
íí  
:
íí  !
ReferentialAction
íí" 3
.
íí3 4
Cascade
íí4 ;
)
íí; <
;
íí< =
}
ìì 
)
ìì 
;
ìì 
migrationBuilder
ïï 
.
ïï 
CreateIndex
ïï (
(
ïï( )
name
ññ 
:
ññ 
$str
ññ 2
,
ññ2 3
table
óó 
:
óó 
$str
óó )
,
óó) *
column
òò 
:
òò 
$str
òò  
)
òò  !
;
òò! "
migrationBuilder
öö 
.
öö 
CreateIndex
öö (
(
öö( )
name
õõ 
:
õõ 
$str
õõ %
,
õõ% &
table
úú 
:
úú 
$str
úú $
,
úú$ %
column
ùù 
:
ùù 
$str
ùù (
,
ùù( )
unique
ûû 
:
ûû 
true
ûû 
)
ûû 
;
ûû 
migrationBuilder
†† 
.
†† 
CreateIndex
†† (
(
††( )
name
°° 
:
°° 
$str
°° 2
,
°°2 3
table
¢¢ 
:
¢¢ 
$str
¢¢ )
,
¢¢) *
column
££ 
:
££ 
$str
££  
)
££  !
;
££! "
migrationBuilder
•• 
.
•• 
CreateIndex
•• (
(
••( )
name
¶¶ 
:
¶¶ 
$str
¶¶ 2
,
¶¶2 3
table
ßß 
:
ßß 
$str
ßß )
,
ßß) *
column
®® 
:
®® 
$str
®®  
)
®®  !
;
®®! "
migrationBuilder
™™ 
.
™™ 
CreateIndex
™™ (
(
™™( )
name
´´ 
:
´´ 
$str
´´ 1
,
´´1 2
table
¨¨ 
:
¨¨ 
$str
¨¨ (
,
¨¨( )
column
≠≠ 
:
≠≠ 
$str
≠≠  
)
≠≠  !
;
≠≠! "
migrationBuilder
ØØ 
.
ØØ 
CreateIndex
ØØ (
(
ØØ( )
name
∞∞ 
:
∞∞ 
$str
∞∞ "
,
∞∞" #
table
±± 
:
±± 
$str
±± $
,
±±$ %
column
≤≤ 
:
≤≤ 
$str
≤≤ )
)
≤≤) *
;
≤≤* +
migrationBuilder
¥¥ 
.
¥¥ 
CreateIndex
¥¥ (
(
¥¥( )
name
µµ 
:
µµ 
$str
µµ %
,
µµ% &
table
∂∂ 
:
∂∂ 
$str
∂∂ $
,
∂∂$ %
column
∑∑ 
:
∑∑ 
$str
∑∑ ,
,
∑∑, -
unique
∏∏ 
:
∏∏ 
true
∏∏ 
)
∏∏ 
;
∏∏ 
}
ππ 	
	protected
ªª 
override
ªª 
void
ªª 
Down
ªª  $
(
ªª$ %
MigrationBuilder
ªª% 5
migrationBuilder
ªª6 F
)
ªªF G
{
ºº 	
migrationBuilder
ΩΩ 
.
ΩΩ 
	DropTable
ΩΩ &
(
ΩΩ& '
name
ææ 
:
ææ 
$str
ææ (
)
ææ( )
;
ææ) *
migrationBuilder
¿¿ 
.
¿¿ 
	DropTable
¿¿ &
(
¿¿& '
name
¡¡ 
:
¡¡ 
$str
¡¡ (
)
¡¡( )
;
¡¡) *
migrationBuilder
√√ 
.
√√ 
	DropTable
√√ &
(
√√& '
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ (
)
ƒƒ( )
;
ƒƒ) *
migrationBuilder
∆∆ 
.
∆∆ 
	DropTable
∆∆ &
(
∆∆& '
name
«« 
:
«« 
$str
«« '
)
««' (
;
««( )
migrationBuilder
…… 
.
…… 
	DropTable
…… &
(
……& '
name
   
:
   
$str
   (
)
  ( )
;
  ) *
migrationBuilder
ÃÃ 
.
ÃÃ 
	DropTable
ÃÃ &
(
ÃÃ& '
name
ÕÕ 
:
ÕÕ 
$str
ÕÕ #
)
ÕÕ# $
;
ÕÕ$ %
migrationBuilder
œœ 
.
œœ 
	DropTable
œœ &
(
œœ& '
name
–– 
:
–– 
$str
–– #
)
––# $
;
––$ %
}
—— 	
}
““ 
}”” ‹"
oD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Data\Migrations\20211208103729_V1.cs
	namespace 	
WebApplication
 
. 
Data 
. 

Migrations (
{ 
public 

partial 
class 
V1 
: 
	Migration '
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
CreateTable		 (
(		( )
name

 
:

 
$str

 
,

  
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 :
,: ;
nullable< D
:D E
falseF K
)K L
. 

Annotation #
(# $
$str$ :
,: ;
true< @
)@ A
,A B
Balance 
= 
table #
.# $
Column$ *
<* +
decimal+ 2
>2 3
(3 4
type4 8
:8 9
$str: @
,@ A
nullableB J
:J K
falseL Q
)Q R
,R S
Number 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 >
,> ?
nullable@ H
:H I
trueJ N
)N O
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 1
,1 2
x3 4
=>5 7
x8 9
.9 :
Id: <
)< =
;= >
} 
) 
; 
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str  
,  !
columns 
: 
new 
[ 
] 
{  
$str! %
,% &
$str' 0
,0 1
$str2 :
}; <
,< =
values 
: 
new 
object "
[" #
]# $
{% &
$num' (
,( )
$num* 2
,2 3
$str4 ?
}@ A
)A B
;B C
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str  
,  !
columns 
: 
new 
[ 
] 
{  
$str! %
,% &
$str' 0
,0 1
$str2 :
}; <
,< =
values 
: 
new 
object "
[" #
]# $
{% &
$num' (
,( )
$num* 3
,3 4
$str5 @
}A B
)B C
;C D
migrationBuilder!! 
.!! 

InsertData!! '
(!!' (
table"" 
:"" 
$str""  
,""  !
columns## 
:## 
new## 
[## 
]## 
{##  
$str##! %
,##% &
$str##' 0
,##0 1
$str##2 :
}##; <
,##< =
values$$ 
:$$ 
new$$ 
object$$ "
[$$" #
]$$# $
{$$% &
$num$$' (
,$$( )
$num$$* 4
,$$4 5
$str$$6 @
}$$A B
)$$B C
;$$C D
}%% 	
	protected'' 
override'' 
void'' 
Down''  $
(''$ %
MigrationBuilder''% 5
migrationBuilder''6 F
)''F G
{(( 	
migrationBuilder)) 
.)) 
	DropTable)) &
())& '
name** 
:** 
$str** 
)**  
;**  !
}++ 	
},, 
}-- ˛
YD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Enums\Roles.cs
	namespace 	
WebApplication
 
. 
Enums 
{ 
public 

enum 
	RolesEnum 
{ 

Management 
, 
Finance 
, 
HR 

} 
}		 ì

iD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Middlewares\SecurityHeaders.cs
	namespace 	
WebApplication
 
. 
Middlewares $
{ 
public 

class %
SecurityHeadersMiddleware *
{ 
private		 
readonly		 
RequestDelegate		 (
_next		) .
;		. /
public %
SecurityHeadersMiddleware (
(( )
RequestDelegate) 8
next9 =
)= >
{ 	
_next 
= 
next 
; 
} 	
public 
Task 
Invoke 
( 
HttpContext &
context' .
). /
{ 	
contextGG 
.GG 
ResponseGG 
.GG 
HeadersGG $
.GG$ %
AddGG% (
(GG( )
$strGG) B
,GGB C
newGGD G
StringValuesGGH T
(GGT U
$strHH #
+HH$ %
$strII $
+II% &
$strJJ !
)cc 
)cc 
;cc 
returnee 
_nextee 
(ee 
contextee  
)ee  !
;ee! "
}ff 	
}gg 
}hh ≥
cD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Models\ErrorViewModel.cs
	namespace 	
WebApplication
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} ”
YD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Models\User.cs
	namespace 	
WebApplication
 
. 
Models 
{ 
public 

class 
User 
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ±

UD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Program.cs
	namespace

 	
WebApplication


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{8 9

webBuilder: D
.D E

UseStartupE O
<O P
StartupP W
>W X
(X Y
)Y Z
;Z [
}\ ]
)] ^
;^ _
} 
} Ä~
UD:\# BAC CYBER SECURITE\condorcet-bac-cyb-sec\CyberSecurity\WebApplication\Startup.cs
	namespace 	
WebApplication
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddDbContext !
<! " 
ApplicationDbContext" 6
>6 7
(7 8
options8 ?
=>@ B
options 
. 
	UseSqlite !
(! "
Configuration !
.! "
GetConnectionString" 5
(5 6
$str6 I
)I J
)J K
)K L
;L M
services 
. 3
'AddDatabaseDeveloperPageExceptionFilter <
(< =
)= >
;> ?
services!! 
.!! 
AddDefaultIdentity!! '
<!!' (
IdentityUser!!( 4
>!!4 5
(!!5 6
options!!6 =
=>!!> @
options!!A H
.!!H I
SignIn!!I O
.!!O P#
RequireConfirmedAccount!!P g
=!!h i
true!!j n
)!!n o
."" 
AddRoles"" 
<"" 
IdentityRole"" &
>""& '
(""' (
)""( )
.## $
AddEntityFrameworkStores## )
<##) * 
ApplicationDbContext##* >
>##> ?
(##? @
)##@ A
;##A B
services%% 
.%% 
AddAuthorization%% %
(%%% &
options%%& -
=>%%. 0
{&& 
options(( 
.(( 
	AddPolicy(( !
(((! "
$str((" ,
,((, -
policy)) 
=>)) 
policy)) $
.))$ %
RequireRole))% 0
())0 1
	RolesEnum))1 :
.)): ;
Finance)); B
.))B C
ToString))C K
())K L
)))L M
,))M N
	RolesEnum))O X
.))X Y
HR))Y [
.))[ \
ToString))\ d
())d e
)))e f
,))f g
	RolesEnum** !
.**! "

Management**" ,
.**, -
ToString**- 5
(**5 6
)**6 7
)**7 8
)**8 9
;**9 :
options,, 
.,, 
	AddPolicy,, !
(,,! "
$str,," ,
,,,, -
policy-- 
=>-- 
policy-- $
.--$ %
RequireRole--% 0
(--0 1
	RolesEnum--1 :
.--: ;
HR--; =
.--= >
ToString--> F
(--F G
)--G H
,--H I
	RolesEnum--J S
.--S T

Management--T ^
.--^ _
ToString--_ g
(--g h
)--h i
)--i j
)--j k
;--k l
}.. 
).. 
;.. 
services00 
.00 #
AddControllersWithViews00 ,
(00, -
)00- .
.00. /&
AddRazorRuntimeCompilation00/ I
(00I J
)00J K
;00K L
}11 	
public44 
void44 
	Configure44 
(44 
IApplicationBuilder44 1
app442 5
,445 6
IWebHostEnvironment447 J
env44K N
,44N O
IServiceProvider44P `
serviceProvider44a p
)44p q
{55 	
if66 
(66 
env66 
.66 
IsDevelopment66 !
(66! "
)66" #
)66# $
{77 
app88 
.88 %
UseDeveloperExceptionPage88 -
(88- .
)88. /
;88/ 0
app99 
.99 !
UseMigrationsEndPoint99 )
(99) *
)99* +
;99+ ,
}:: 
else;; 
{<< 
app== 
.== 
UseExceptionHandler== '
(==' (
$str==( 5
)==5 6
;==6 7
app?? 
.?? 
UseHsts?? 
(?? 
)?? 
;?? 
}@@ 
appFF 
.FF 
UseCspFF 
(FF 
optionsFF 
=>FF !
{GG 
optionsHH 
.HH 
ScriptSourcesHH %
(HH% &
sHH& '
=>HH( *
sHH+ ,
.HH, -
SelfHH- 1
(HH1 2
)HH2 3
)HH3 4
;HH4 5
optionsII 
.II 
StyleSourcesII $
(II$ %
sII% &
=>II' )
sII* +
.II+ ,
SelfII, 0
(II0 1
)II1 2
)II2 3
;II3 4
optionsJJ 
.JJ 
ImageSourcesJJ $
(JJ$ %
sJJ% &
=>JJ' )
sJJ* +
.JJ+ ,
SelfJJ, 0
(JJ0 1
)JJ1 2
)JJ2 3
;JJ3 4
}KK 
)KK 
;KK 
appMM 
.MM 
UseHttpsRedirectionMM #
(MM# $
)MM$ %
;MM% &
appNN 
.NN 
UseStaticFilesNN 
(NN 
)NN  
;NN  !
appPP 
.PP 

UseRoutingPP 
(PP 
)PP 
;PP 
appRR 
.RR 
UseAuthenticationRR !
(RR! "
)RR" #
;RR# $
appSS 
.SS 
UseAuthorizationSS  
(SS  !
)SS! "
;SS" #
appUU 
.UU 
UseEndpointsUU 
(UU 
	endpointsUU &
=>UU' )
{VV 
	endpointsWW 
.WW 
MapControllerRouteWW ,
(WW, -
nameXX 
:XX 
$strXX #
,XX# $
patternYY 
:YY 
$strYY E
)YYE F
;YYF G
	endpointsZZ 
.ZZ 
MapRazorPagesZZ '
(ZZ' (
)ZZ( )
;ZZ) *
}[[ 
)[[ 
;[[ 
	SeedRoles]] 
(]] 
serviceProvider]] %
)]]% &
.]]& '
Wait]]' +
(]]+ ,
)]], -
;]]- .
	SeedUsers^^ 
(^^ 
serviceProvider^^ %
)^^% &
.^^& '
Wait^^' +
(^^+ ,
)^^, -
;^^- .
SeedUserRoles__ 
(__ 
serviceProvider__ )
)__) *
.__* +
Wait__+ /
(__/ 0
)__0 1
;__1 2
}`` 	
privatebb 
asyncbb 
Taskbb 
SeedUserRolesbb (
(bb( )
IServiceProviderbb) 9
serviceProviderbb: I
)bbI J
{cc 	
vardd 
userManagerdd 
=dd 
serviceProviderdd -
.dd- .
GetRequiredServicedd. @
<dd@ A
UserManagerddA L
<ddL M
IdentityUserddM Y
>ddY Z
>ddZ [
(dd[ \
)dd\ ]
;dd] ^
varff 
userff 
=ff 
awaitff 
userManagerff (
.ff( )
FindByEmailAsyncff) 9
(ff9 :
$strff: P
)ffP Q
;ffQ R
ifgg 
(gg 
usergg 
!=gg 
nullgg 
)gg 
userManagerhh 
.hh 
AddToRoleAsynchh *
(hh* +
userhh+ /
,hh/ 0
	RolesEnumhh1 :
.hh: ;

Managementhh; E
.hhE F
ToStringhhF N
(hhN O
)hhO P
)hhP Q
;hhQ R
userjj 
=jj 
awaitjj 
userManagerjj $
.jj$ %
FindByEmailAsyncjj% 5
(jj5 6
$strjj6 I
)jjI J
;jjJ K
ifkk 
(kk 
userkk 
!=kk 
nullkk 
)kk 
userManagerll 
.ll 
AddToRoleAsyncll *
(ll* +
userll+ /
,ll/ 0
	RolesEnumll1 :
.ll: ;
Financell; B
.llB C
ToStringllC K
(llK L
)llL M
)llM N
;llN O
usernn 
=nn 
awaitnn 
userManagernn $
.nn$ %
FindByEmailAsyncnn% 5
(nn5 6
$strnn6 D
)nnD E
;nnE F
ifoo 
(oo 
useroo 
!=oo 
nulloo 
)oo 
userManagerpp 
.pp 
AddToRoleAsyncpp *
(pp* +
userpp+ /
,pp/ 0
	RolesEnumpp1 :
.pp: ;
HRpp; =
.pp= >
ToStringpp> F
(ppF G
)ppG H
)ppH I
;ppI J
userrr 
=rr 
awaitrr 
userManagerrr $
.rr$ %
FindByEmailAsyncrr% 5
(rr5 6
$strrr6 O
)rrO P
;rrP Q
ifss 
(ss 
userss 
!=ss 
nullss 
)ss 
{tt 
userManageruu 
.uu 
AddToRoleAsyncuu *
(uu* +
useruu+ /
,uu/ 0
	RolesEnumuu1 :
.uu: ;
HRuu; =
.uu= >
ToStringuu> F
(uuF G
)uuG H
)uuH I
;uuI J
userManagervv 
.vv 
AddToRoleAsyncvv *
(vv* +
uservv+ /
,vv/ 0
	RolesEnumvv1 :
.vv: ;

Managementvv; E
.vvE F
ToStringvvF N
(vvN O
)vvO P
)vvP Q
;vvQ R
}ww 
}xx 	
privatezz 
asynczz 
Taskzz 
	SeedUserszz $
(zz$ %
IServiceProviderzz% 5
serviceProviderzz6 E
)zzE F
{{{ 	
var|| 
userManager|| 
=|| 
serviceProvider|| -
.||- .
GetRequiredService||. @
<||@ A
UserManager||A L
<||L M
IdentityUser||M Y
>||Y Z
>||Z [
(||[ \
)||\ ]
;||] ^
var~~ 
user~~ 
=~~ 
await~~ 
userManager~~ (
.~~( )
FindByEmailAsync~~) 9
(~~9 :
$str~~: P
)~~P Q
;~~Q R
if 
( 
user 
== 
null 
) 
await
ÄÄ 
userManager
ÄÄ !
.
ÄÄ! "
CreateAsync
ÄÄ" -
(
ÄÄ- .
new
ÄÄ. 1
IdentityUser
ÄÄ2 >
(
ÄÄ> ?
$str
ÄÄ? U
)
ÄÄU V
{
ÅÅ 
Email
ÇÇ 
=
ÇÇ 
$str
ÇÇ 2
,
ÇÇ2 3
EmailConfirmed
ÉÉ "
=
ÉÉ# $
true
ÉÉ% )
}
ÑÑ 
,
ÑÑ 
$str
ÑÑ 
)
ÑÑ 
;
ÑÑ  
user
ÜÜ 
=
ÜÜ 
await
ÜÜ 
userManager
ÜÜ $
.
ÜÜ$ %
FindByEmailAsync
ÜÜ% 5
(
ÜÜ5 6
$str
ÜÜ6 I
)
ÜÜI J
;
ÜÜJ K
if
áá 
(
áá 
user
áá 
==
áá 
null
áá 
)
áá 
await
àà 
userManager
àà !
.
àà! "
CreateAsync
àà" -
(
àà- .
new
àà. 1
IdentityUser
àà2 >
(
àà> ?
$str
àà? R
)
ààR S
{
ââ 
Email
ää 
=
ää 
$str
ää /
,
ää/ 0
EmailConfirmed
ãã "
=
ãã# $
true
ãã% )
}
åå 
,
åå 
$str
åå 
)
åå 
;
åå  
user
éé 
=
éé 
await
éé 
userManager
éé $
.
éé$ %
FindByEmailAsync
éé% 5
(
éé5 6
$str
éé6 D
)
ééD E
;
ééE F
if
èè 
(
èè 
user
èè 
==
èè 
null
èè 
)
èè 
await
êê 
userManager
êê !
.
êê! "
CreateAsync
êê" -
(
êê- .
new
êê. 1
IdentityUser
êê2 >
(
êê> ?
$str
êê? M
)
êêM N
{
ëë 
Email
íí 
=
íí 
$str
íí *
,
íí* +
EmailConfirmed
ìì "
=
ìì# $
true
ìì% )
}
îî 
,
îî 
$str
îî 
)
îî 
;
îî  
user
ññ 
=
ññ 
await
ññ 
userManager
ññ $
.
ññ$ %
FindByEmailAsync
ññ% 5
(
ññ5 6
$str
ññ6 O
)
ññO P
;
ññP Q
if
óó 
(
óó 
user
óó 
==
óó 
null
óó 
)
óó 
await
òò 
userManager
òò !
.
òò! "
CreateAsync
òò" -
(
òò- .
new
òò. 1
IdentityUser
òò2 >
(
òò> ?
$str
òò? X
)
òòX Y
{
ôô 
Email
öö 
=
öö 
$str
öö 5
,
öö5 6
EmailConfirmed
õõ "
=
õõ# $
true
õõ% )
}
úú 
,
úú 
$str
úú 
)
úú 
;
úú  
}
ùù 	
private
üü 
async
üü 
Task
üü 
	SeedRoles
üü $
(
üü$ %
IServiceProvider
üü% 5
serviceProvider
üü6 E
)
üüE F
{
†† 	
var
°° 
roleManager
°° 
=
°° 
serviceProvider
°° -
.
°°- . 
GetRequiredService
°°. @
<
°°@ A
RoleManager
°°A L
<
°°L M
IdentityRole
°°M Y
>
°°Y Z
>
°°Z [
(
°°[ \
)
°°\ ]
;
°°] ^
if
££ 
(
££ 
!
££ 
await
££ 
roleManager
££ "
.
££" #
RoleExistsAsync
££# 2
(
££2 3
	RolesEnum
££3 <
.
££< =

Management
££= G
.
££G H
ToString
££H P
(
££P Q
)
££Q R
)
££R S
)
££S T
await
§§ 
roleManager
§§ !
.
§§! "
CreateAsync
§§" -
(
§§- .
new
§§. 1
IdentityRole
§§2 >
(
§§> ?
	RolesEnum
§§? H
.
§§H I

Management
§§I S
.
§§S T
ToString
§§T \
(
§§\ ]
)
§§] ^
)
§§^ _
)
§§_ `
;
§§` a
if
¶¶ 
(
¶¶ 
!
¶¶ 
await
¶¶ 
roleManager
¶¶ "
.
¶¶" #
RoleExistsAsync
¶¶# 2
(
¶¶2 3
	RolesEnum
¶¶3 <
.
¶¶< =
Finance
¶¶= D
.
¶¶D E
ToString
¶¶E M
(
¶¶M N
)
¶¶N O
)
¶¶O P
)
¶¶P Q
await
ßß 
roleManager
ßß !
.
ßß! "
CreateAsync
ßß" -
(
ßß- .
new
ßß. 1
IdentityRole
ßß2 >
(
ßß> ?
	RolesEnum
ßß? H
.
ßßH I
Finance
ßßI P
.
ßßP Q
ToString
ßßQ Y
(
ßßY Z
)
ßßZ [
)
ßß[ \
)
ßß\ ]
;
ßß] ^
if
©© 
(
©© 
!
©© 
await
©© 
roleManager
©© "
.
©©" #
RoleExistsAsync
©©# 2
(
©©2 3
	RolesEnum
©©3 <
.
©©< =
HR
©©= ?
.
©©? @
ToString
©©@ H
(
©©H I
)
©©I J
)
©©J K
)
©©K L
await
™™ 
roleManager
™™ !
.
™™! "
CreateAsync
™™" -
(
™™- .
new
™™. 1
IdentityRole
™™2 >
(
™™> ?
	RolesEnum
™™? H
.
™™H I
HR
™™I K
.
™™K L
ToString
™™L T
(
™™T U
)
™™U V
)
™™V W
)
™™W X
;
™™X Y
}
´´ 	
}
¨¨ 
}≠≠ 