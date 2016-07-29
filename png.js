/**********************************************************
Sleight Simple
  (c) 2001, Aaron Boodman
  http://www.youngpup.net

Sleight Background
  (c) 2001, Aaron Boodman
  (c) 2003, Drew McLellan
  http://www.allinthehead.com
**********************************************************/

// on test si on est bien sur IE
if(navigator.platform == 'Win32' && navigator.appName == 'Microsoft Internet Explorer' && window.attachEvent)
{
	window.attachEvent('onload', fixBackgroundImages);
	window.attachEvent('onload', fixImages);
}

// fix sur les images en background
function fixBackgroundImages()
{
	var sExceptAttribute = 'mtcNoPngFix';
	var iNavVersion 	 = navigator.appVersion.match(/MSIE (\d+\.\d+)/, '');
	var isOk 			 = (iNavVersion != null && Number(iNavVersion[1]) >= 5.5) ? true : false;
	var oCurrentSelector = (typeof(pngfixContainer) != 'undefined') ? document.getElementById(pngfixContainer).all : document.all;
	var iLength			 = oCurrentSelector.length;

	for(var i = 0; i < iLength; i++)
	{
		var sCurrentBackground = oCurrentSelector[i].currentStyle.backgroundImage;
		var sRelAttribute	   = oCurrentSelector[i].getAttribute('rel');
		
		if(isOk && sCurrentBackground && sRelAttribute != sExceptAttribute)
		{
			if(sCurrentBackground.match(/\.png/i) != null)
			{
				var sCurrentImg = sCurrentBackground.substring(5, sCurrentBackground.length-2);
				
				oCurrentSelector[i].style.filter 		  = 'progid:DXImageTransform.Microsoft.AlphaImageLoader(src="'+sCurrentImg+'", sizingMethod="crop")';
				oCurrentSelector[i].style.backgroundImage = 'none';
			}
		}
	}
}

// fix sur les images simples
function fixImages()
{
	var sExceptAttribute = 'mtcNoPngFix';
	var iNavVersion 	 = navigator.appVersion.match(/MSIE (\d+\.\d+)/, '');
	var isOk 			 = (iNavVersion != null && Number(iNavVersion[1]) >= 5.5) ? true : false;

	for(var i = 0; i < document.images.length; i++)
	{
		var oImage	   	  = document.images[i];
		var sRelAttribute = document.images[i].getAttribute('rel');
		var sImageName 	  = oImage.src;
		var sExtension 	  = sImageName.substring(sImageName.length-3, sImageName.length);
		
		if(isOk && sImageName.match(/\.png/i) != null && sRelAttribute != sExceptAttribute)
		{
			oImage.outerHTML = '<div style="float: left; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\''+sImageName+'\', sizing=\'crop\'); width: '+oImage.width+'px; height: '+oImage.height+'px"><!-- --></div>';
			i = i - 1;
		}
	}
}