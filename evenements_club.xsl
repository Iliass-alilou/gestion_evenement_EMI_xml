<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">


<html xmlns="http://www.w3.org/1999/xhtml" lang="en" encodage="ISO-8859-1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Evénements à l'EMI</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:10,
		animSpeed:500,
		pauseTime:2200,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false,
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>

</head>
<body class="homepage">

<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	
        <div id="site_title"><h1><a href="index.html">Evénements à l'EMI</a></h1></div>
        
        <div class="cleaner"></div>
    </div>
    
    <div id="tooplate_menu">
        <ul>
            <li><a href="index.html">Acceuil </a></li>
            <li><a href="evenements.xml">Par Mois</a></li>
			<li><a href="evenements_type.xml">Par Catégorie</a></li>
			<li><a href="evenements_club.xml"  class="current">Par Club</a></li>
        </ul>    	
        
        
		
        <div class="cleaner"></div>
    </div> <!-- end of tooplate_menu -->
    
    <div id="tooplate_middle">
    
        <div id="tooplate_middle_subpage">
        <h2>Le prestigieux flambeau que portent les ingénieurs de demain!</h2>
		        <br/>
       	<h2>La liste des événements de l'année 2021 par club</h2><br/>

		</div>
	</div>
        
    <div id="tooplate_main">
    	<xsl:for-each select="evenements/organisateur">
        <div class="col_w960">
        	
			<h2><xsl:element name="a">
                   <xsl:attribute name="href">
                      <xsl:value-of select="detail"/>
                   </xsl:attribute>
                   <xsl:value-of select="@club"/>
                </xsl:element></h2>
			
            <div class="col_w450 float_l">
			<xsl:for-each select="evenement">
                <div class="wwd_box">
                   <xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="icon"/></xsl:attribute>
                   </xsl:element>
                	<img />
                    <h3><xsl:value-of select="date"/> : <xsl:value-of select="type"/></h3>
                    <p><xsl:value-of select="titre"/></p>
                     
                    <div class="cleaner"></div>
                </div>
				</xsl:for-each>
            </div>
			
			
      
            <div class="cleaner"></div>
		</div>
		</xsl:for-each>
		
    
    	
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->
        
</div> <!-- end of wrapper -->

<div id="tooplate_cr_wrapper">
            <div id="tooplate_cr">
				
					<ul>Adresse : Avenue Ibn Sina B.P 765, Agdal Rabat 10090 Maroc</ul>
					<ul>Téléphone : (+212) 537 68 71 50</ul>
					<ul>Fax : (+212) 537 77 88 53</ul>
					<ul>Email : <a href="#">contact@emi.ac.ma</a></ul>
					<ul>Site web : <a href="emi.ac.ma">www.emi.ac.ma</a></ul>

				Copyright © 2021 <a href="#">Ecole Mohammadia d'Ingénieurs</a> Tout les droits réservés 

			</div> <!-- end of footer wrapper -->
</div> <!-- end of footer -->

</body>
</html>

</xsl:template> 
</xsl:stylesheet>