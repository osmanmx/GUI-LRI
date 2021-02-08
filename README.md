# GUI - Modelo iónico Luo - Rudy I
<div align="center">
<p align="center">
<img src="image/GUI-LRI-1.jpg" alt="GUI-Modelo Luo-Rudy I" border="2px" style="max-width:100%;width:auto;height:auto;" title="GUI-Modelo Luo-Rudy I"/>
</p<></div>
<br>
<pre style="font-weight: bold;" wrap="">Se recomienda revisar el art&iacute;culo de Luo and Rudy (1991) en: <a href="https://www.ahajournals.org/doi/abs/10.1161/01.res.68.6.1501" target="_blank">Circulation Research <br>1991;68:1501-1526</a>, para la descripción del modelo i&oacute;nico detallado.</pre>
<div align="center">
<h1><big><big>Bienvenid@ Aplicaci&oacute;n GUI - Modelo Luo Rudy I</big></big></h1>
<br>
<h2><big><big> GUI - Graphical User Interface, LR-I</big></big></h2>
</div>
<big><big><big>Comienza&nbsp; por ejecutar el ambiente Matlab y abrir&nbsp; una ventana de l&iacute;nea de comandos<br>
En la l&iacute;nea de comandos&nbsp; especifica la ruta de la carpeta donde el archivo: "Luo_Rudy91.m", est&aacute; localizado.
Por ejemplo, si est&aacute; en la carpeta &lt;GUI-LRI&gt;, dentro de otra llamada &lt;home&gt;, entonces:<br>
<b>&gt;&gt;&nbsp; cd&nbsp; c:\\home\GUI-LRI</b><br>
<br>
Ahora ejecuta el programa principal. Escribe:&nbsp; "Luo_Rudy91" en la l&iacute;nea de comandos y oprime ENTER:<br>
<b>&gt;&gt; Luo_Rudy91</b><br>
<br>
Este comando desde el ambiente Matlab, inicializa la interfaz Gr&aacute;fica de Usuario: GUI, Modelo Luo-Rudy I.<br>
<br>
El bot&oacute;n <b>Ayuda</b> es una GUIA para el men&uacute; de opciones.<br>
<b>Men&uacute; Principal</b>. Parte superior izquierda de GUI, LR-I.
    <ul>
<li>Selecciona par&aacute;metros y oprime <b>Inicio </b>para proceder (repite al cambiar par&aacute;metros).</li>
<li>Si oprimes el bot&oacute;n&nbsp; de <b>Guardar</b> puedes guardar los datos de la simulaci&oacute;n en formato de archivo Matlab: &lt;<i>nombre_archivo.mat</i>&gt; </li>
<li>Si oprimes el bot&oacute;n&nbsp; de <b>Cargar</b> puedes cargar tus archivos propios de simulaci&oacute;n de datos calculados en GUI, LR-I.</li>
</ul>
<b>Opci&oacute;n de ZOOM</b>
    <ul>
<li> Selecciona el &aacute;rea deseada de la gr&aacute;fica - y da clic con bot&oacute;n izquierdo del &lt;mouse&gt; para ACERCAR (ZOOM in).</li>
<li> Clic con el bot&oacute;n derecho del &lt;mouse&gt; para ALEJAR (zoom out).</li>
<li> Al dar clic, en los l&iacute;mites de los ejes en las gr&aacute;ficas cambias el ZOOM por un factor de 2, ya sea para ACERCAR o ALEJAR.</li>
</ul>
<div align="center">
<p align="center">
<img src="image/GUI-LRI-4.jpg" alt="GUI-Modelo Luo-Rudy I" border="2px" style="max-width:100%;width:auto;height:auto;" title="GUI-Modelo Luo-Rudy I"/>
</p<></div>
<br>
<p>
/***************************************************************************<br>
<div style="text-align: center;">
    <h3>All content on this App: GUI - Modelo Luo-Rudy I, is made available under the <a target="_blank" href="http://www.gnu.org/licenses/gpl-3.0.html" rel="license"> GNU General Public License </a>, and <a target="_blank" href="http://creativecommons.org/licenses/by-nc/2.5/mx/"
            rel="license"><img src="image/cc.png" alt="Creative Commons License" width="88" height="31" style="border-width: 0pt;" class="img-responsive atto_image_button_middle"></a></h3>
</div>
<hr style="width: 100%; height: 2px;">
  <div style="text-align: justify;">El c&oacute;digo base de la presente obra fue creado por: <a href="mailto:rudy@wustl.edu" target="_blank">Leonid Livshitz & Yoram Rudy</a>, Copyright (C) 2006, bajo los t&eacute;rminos y condiciones establecidos por <a target="_blank" href="http://www.gnu.org/licenses/gpl-3.0.html" rel="license">GNU - General Public License (GPL)</a>; implicando que toda la presente obra publicada y su uso est&eacute; bajo dicha Licencia de P&uacute;blico en General (GPL, Versi&oacute;n 3), establecida el 29 de junio de 2007; se incluye archivo <a href="gpl-3.0.txt" target="_blank">gpl-3.0.txt</a> en carpeta principal de la aplicaci&oacute;n GUI-LRI. El matemático mexicano <a href="mailto:osman@educart.org" target="_blank">Osman Villanueva Garc&iacute;a</a>, Copyright (C) 2013, realizó modificaciones al c&oacute;digo base para desarrollar la aplicaci&oacute;n: GUI - Modelo i&oacute;nico Luo-Rudy I, &nbsp;y desde ese momento se incluye a la presente obra el respaldo de la <a rel="license" title="Licencia creative Commons" target="_blank" href="http://creativecommons.org/licenses/by-nc/2.5/mx/">Licencia Creative Commons Atribución-NoComercial 2.5, M&eacute;xico</a>.</div>
<hr style="width: 100%;">
<p></p>
<h2 style="text-align: center;">Atribución-No comercial 2.5 México</h2>
<p style="text-align: right;"><img src="image/mx.png" alt="México - MX " width="54" height="31" class="img-responsive atto_image_button_text-bottom"></p>
<h3>Eres libre de:</h3>
<ul>
    <li>
        <p style="margin-bottom: 0cm; text-align: left;">Copiar, distribuir y comunicar públicamente la obra</p>
    </li>
    <li>
        <p style="text-align: left;">Hacer obras derivadas</p>
    </li>
</ul>
<h3>Bajo las condiciones siguientes:</h3>
<ul>
    <li>
        <p style="text-align: left;"><a name="attribution-container "></a><strong>Atribución</strong>. Debes reconocer la autor&iacute;a de la obra en los términos especificados por el propio autor y licencias establecidas.</p>
        <p style="text-align: left;"><strong> </strong><strong style="font-style: italic;">Attribute this work<a name="Atributos "></a>:</strong><span style="font-style: italic;"> What does "Attribute this work " mean? The page you came from contained embedded licensing metadata, including how the creator wishes to be attributed for re-use. You can use the HTML here to cite the work. Doing so will also include metadata on your page so that others can find the original work as well.</span></p>
    </li>
</ul>
<ul>
    <li>
        <p style="text-align: left;"><strong>No comercial</strong>. No puedes utilizar esta obra para fines comerciales.</p>
    </li>
    <li>
        <p style="text-align: left;">Al reutilizar o distribuir la obra, se tiene que dejar sustentado los t&eacute;rminos de la licencia de la presente obra.</p>
    </li>
    <li>
        <p style="text-align: left; margin-bottom: 0cm;">Alguna de estas condiciones puede no aplicarse si se obtiene el permiso del titular de los derechos de autor</p>
    </li>
    <li>
        <p style="text-align: left; margin-bottom: 0cm;">Nada en esta licencia menoscaba o restringe los derechos morales del autor.</p>
    </li>
</ul>
<hr style="width: 100%; height: 2px;">
<p style="text-align: justify;">Advertencia: Esta declaración no es una licencia. Es simplemente una referencia sencilla para ayudarte a entender el Código Legal (la licencia completa). Esto es únicamente una interfaz gráfica del Código Legal de fondo de la aplicación GUI - Modelo LR-I. Esta declaración no tiene ninguna validez legal y sus elementos, de hecho, no son contemplados en el texto de la licencia.</p>
<p><a name="advertencia "></a></p>
<p style="margin-top: 1.06cm; text-align: center;"><strong>Los derechos derivados de usos legítimos u otras limitaciones reconocidas por ley no se ven afectados por lo anterior.</strong></p>
<p style="margin-bottom: 0cm; text-align: center;">Esto es un resumen f&aacute;cilmente legible del <a href="http://creativecommons.org/licenses/by-nc/2.5/mx/legalcode" target="_blank">texto legal - Licencia completa</a>.</p>
<p style="margin-bottom: 0cm; text-align: center;">Aplicación GUI - <a href="https://github.com/osmanmx/GUI-LRI" target="_blank">Modelo i&oacute;nico Luo-Rudy I</a></p>
<hr style="width: 100%; height: 2px;">
<h3 style="text-align: center; font-weight: bold; font-style: italic;">Atentamente:<br><a href="mailto:osman@educart.org" target="_blank">Osman Villanueva García</a><br>
<a href="https://www.hashtags.org/definition/ComparteDisfrutaAprende/" target="_blank">COMPARTE-DISFRUTA-APRENDE</a></h3>
</p>
<p class="footer">Published with MATLAB® R2019b<br>
</p>
