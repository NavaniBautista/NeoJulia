### A Pluto.jl notebook ###
# v1.0.4

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    #! format: off
    return quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
    #! format: on
end

# ╔═╡ bf57a44a-cd20-5ba3-a63d-9acb8bdbce03
html"""<style>@font-face { font-family: 'CM Serif'; font-weight: normal; font-style: normal; font-display: swap;
  src: local('CMU Serif'), url('https://cdn.jsdelivr.net/gh/bitmaks/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Serif/cmunrm.woff') format('woff'), url('https://cdn.jsdelivr.net/gh/aaaakshat/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Serif/cmunrm.woff') format('woff'); }
@font-face { font-family: 'CM Serif'; font-weight: bold; font-style: normal; font-display: swap;
  src: local('CMU Serif'), url('https://cdn.jsdelivr.net/gh/bitmaks/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Serif/cmunbx.woff') format('woff'), url('https://cdn.jsdelivr.net/gh/aaaakshat/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Serif/cmunbx.woff') format('woff'); }
@font-face { font-family: 'CM Serif'; font-weight: normal; font-style: italic; font-display: swap;
  src: local('CMU Serif'), url('https://cdn.jsdelivr.net/gh/bitmaks/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Serif/cmunti.woff') format('woff'), url('https://cdn.jsdelivr.net/gh/aaaakshat/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Serif/cmunti.woff') format('woff'); }
@font-face { font-family: 'CM Serif'; font-weight: bold; font-style: italic; font-display: swap;
  src: local('CMU Serif'), url('https://cdn.jsdelivr.net/gh/bitmaks/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Serif/cmunbi.woff') format('woff'), url('https://cdn.jsdelivr.net/gh/aaaakshat/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Serif/cmunbi.woff') format('woff'); }
@font-face { font-family: 'CM Mono'; font-weight: normal; font-style: normal; font-display: swap;
  src: local('CMU Typewriter'), url('https://cdn.jsdelivr.net/gh/bitmaks/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Typewriter/cmuntt.woff') format('woff'), url('https://cdn.jsdelivr.net/gh/aaaakshat/cm-web-fonts@333f55ec19733c28cdc43567ecf72eafd6b0af61/font/Typewriter/cmuntt.woff') format('woff'); }
/* ════════════ VARIABLES ════════════ */
:root {
  --tex: 'CM Serif', 'Latin Modern Roman', 'CMU Serif', 'Computer Modern Serif', 'STIX Two Text', Georgia, serif;
  --tt: 'CM Mono', 'Latin Modern Mono', 'CMU Typewriter Text', 'JuliaMono', ui-monospace, monospace;
  --tinta: #1b1b1f;
  --tinta-suave: #4a4a52;
  --regla: #1b1b1f;
  --papel: #fffefa;
  --papel-2: #f7f3ea;
  --azul: #1d4f91;
  --rojo: #9b1d20;
  --verde: #2b6a4a;
  --morado: #5d3a8c;
  --ambar: #a2620a;
  --enlace: #1d4f91;
}
@media (prefers-color-scheme: dark) {
  :root { --tinta: #ece9e1; --tinta-suave: #c5c1b7; --regla: #ece9e1; --papel: #1f1f22; --papel-2: #2a2a2e;
          --azul: #8fb4ec; --rojo: #f08a8c; --verde: #8fd1ae; --morado: #c6a8f0; --ambar: #f0c070; --enlace: #9cc0f5; }
}

/* ════════════ PÁGINA ════════════ */
html { hyphens: auto; }
body:not(.fake_class) main { max-width: 780px; }
@media (min-width: 1100px) {
  body:not(.fake_class) main { margin-left: max(24px, calc(50vw - 690px)); margin-right: auto; }
}
@media (min-width: 1380px) {
  body:not(.fake_class) main { margin-left: max(270px, calc(50vw - 560px)); }
}

/* ════════════ TEXTO ════════════ */
pluto-output .markdown, pluto-output .tx, .tx {
  font-family: var(--tex); color: var(--tinta);
  font-size: 1.13rem; line-height: 1.52;
  font-variant-ligatures: common-ligatures;
}
pluto-output .markdown p, pluto-output .markdown li { text-align: justify; hyphens: auto; }
pluto-output .markdown p { margin: .55em 0; }
pluto-output .markdown strong { font-weight: bold; }
pluto-output .markdown em { font-style: italic; }
pluto-output .markdown a { color: var(--enlace); text-decoration: none; }
pluto-output .markdown a:hover { text-decoration: underline; }
pluto-output .markdown code {
  font-family: var(--tt); font-size: .93em; background: none; padding: 0; color: var(--tinta);
}
pluto-output .markdown pre code { font-family: 'JuliaMono', var(--tt); font-size: .86rem; }
pluto-output .markdown pre { background: var(--papel-2); border-radius: 0; border-left: 2px solid var(--tinta-suave); }
pluto-output .markdown blockquote {
  border-left: none; margin: 1em 2.2em; font-style: normal; color: var(--tinta);
}

/* Títulos al estilo de un libro */
pluto-output .markdown h1, pluto-output .markdown h2, pluto-output .markdown h3, pluto-output .markdown h4 {
  font-family: var(--tex); color: var(--tinta); border: none; letter-spacing: 0;
}
pluto-output .markdown h2 { font-size: 1.5rem; font-weight: bold; margin: 1.7em 0 .5em; }
pluto-output .markdown h3 { font-size: 1.22rem; font-weight: bold; margin: 1.4em 0 .4em; }
pluto-output .markdown h4 { font-size: 1.08rem; font-weight: bold; font-style: italic; margin: 1.1em 0 .3em; }

/* Tablas tipo booktabs */
pluto-output .markdown table { border-collapse: collapse; margin: 1em auto; font-size: 1.02rem; border-top: 1.6px solid var(--regla); border-bottom: 1.6px solid var(--regla); }
pluto-output .markdown thead th { border-bottom: .8px solid var(--regla) !important; font-weight: bold; }
pluto-output .markdown th, pluto-output .markdown td { border: none !important; padding: .32em .9em !important; background: none !important; text-align: left; }
pluto-output .markdown tbody tr:nth-child(even) { background: none !important; }

/* ════════════ ENTORNOS TIPO amsthm (admoniciones de Markdown) ════════════ */
pluto-output .markdown div.admonition {
  background: none; border: none; border-radius: 0; box-shadow: none;
  padding: 0; margin: 1.05em 0; color: var(--tinta);
}
pluto-output .markdown div.admonition > .admonition-title {
  background: none; color: var(--tinta); font-family: var(--tex); font-size: 1em;
  padding: 0; margin: 0; border: none; display: inline; font-weight: bold;
}
pluto-output .markdown div.admonition > .admonition-title::before { content: none; display: none; }
pluto-output .markdown div.admonition > .admonition-title::after { content: ". "; }
pluto-output .markdown div.admonition > .admonition-title + p { display: inline; }
pluto-output .markdown div.admonition > p:last-child { margin-bottom: 0; }

/* Definición: recta, con filete azul */
pluto-output .markdown div.admonition.definicion { border-left: 2.2px solid var(--azul); padding-left: .9em; }
pluto-output .markdown div.admonition.definicion > .admonition-title { color: var(--azul); }
/* Teorema / proposición / lema / corolario: cuerpo en itálica */
pluto-output .markdown div.admonition.teorema { border-left: 2.2px solid var(--rojo); padding-left: .9em; font-style: italic; }
pluto-output .markdown div.admonition.teorema > .admonition-title { color: var(--rojo); font-style: normal; }
pluto-output .markdown div.admonition.teorema code, pluto-output .markdown div.admonition.teorema mjx-container { font-style: normal; }
/* Demostración: "Demostración." en itálica y ∎ al final */
pluto-output .markdown div.admonition.demostracion > .admonition-title { font-weight: normal; font-style: italic; }
pluto-output .markdown div.admonition.demostracion > *:last-child::after { content: "  ∎"; float: right; }
/* Ejemplo y observación */
pluto-output .markdown div.admonition.ejemplo { border-left: 2.2px solid var(--verde); padding-left: .9em; }
pluto-output .markdown div.admonition.ejemplo > .admonition-title { color: var(--verde); }
pluto-output .markdown div.admonition.observacion > .admonition-title { font-weight: normal; font-style: italic; }
/* Rompecabezas del libro y ejercicios: caja de papel */
pluto-output .markdown div.admonition.rompecabezas, pluto-output .markdown div.admonition.ejercicio {
  background: var(--papel-2); padding: .75em 1em; border-top: 1.2px solid var(--regla); border-bottom: 1.2px solid var(--regla);
}
pluto-output .markdown div.admonition.rompecabezas > .admonition-title, pluto-output .markdown div.admonition.ejercicio > .admonition-title { font-variant: small-caps; letter-spacing: .04em; }
/* Pausa para pensar: filete punteado */
pluto-output .markdown div.admonition.pausa { border: 1.2px dashed var(--tinta-suave); padding: .7em 1em; }
pluto-output .markdown div.admonition.pausa > .admonition-title { font-variant: small-caps; letter-spacing: .04em; }
/* Idea clave */
pluto-output .markdown div.admonition.clave { background: var(--papel-2); padding: .7em 1em; border-left: 3.5px solid var(--tinta); }
pluto-output .markdown div.admonition.clave > .admonition-title { font-variant: small-caps; letter-spacing: .04em; }
/* Cuidado y tesis */
pluto-output .markdown div.admonition.cuidado { border-left: 2.2px solid var(--ambar); padding-left: .9em; }
pluto-output .markdown div.admonition.cuidado > .admonition-title { color: var(--ambar); }
pluto-output .markdown div.admonition.tesis { border-left: 2.2px solid var(--morado); padding-left: .9em; }
pluto-output .markdown div.admonition.tesis > .admonition-title { color: var(--morado); }
pluto-output .markdown div.admonition.rigor { border: 1.4px solid var(--rojo); padding: .75em 1em; }
pluto-output .markdown div.admonition.rigor > .admonition-title { color: var(--rojo); font-variant: small-caps; letter-spacing: .04em; }
/* Resumen del capítulo */
pluto-output .markdown div.admonition.resumen { margin: 1.6em 2.2em; font-size: .97em; }
pluto-output .markdown div.admonition.resumen > .admonition-title { display: block; text-align: center; font-variant: small-caps; letter-spacing: .06em; margin-bottom: .3em; }
pluto-output .markdown div.admonition.resumen > .admonition-title::after { content: ""; }
pluto-output .markdown div.admonition.resumen > .admonition-title + p { display: block; }
/* Respuestas automáticas */
pluto-output .markdown div.admonition.correct, pluto-output .markdown div.admonition.danger, pluto-output .markdown div.admonition.info {
  padding: .55em .9em; border-left: 3px solid var(--verde); background: color-mix(in srgb, var(--verde) 7%, transparent);
}
pluto-output .markdown div.admonition.danger { border-left-color: var(--rojo); background: color-mix(in srgb, var(--rojo) 7%, transparent); }
pluto-output .markdown div.admonition.info { border-left-color: var(--azul); background: color-mix(in srgb, var(--azul) 6%, transparent); }

/* ════════════ NOTAS AL MARGEN (\marginpar) ════════════ */
pluto-output .markdown div.admonition.margen, .margen-html {
  font-size: .86rem; line-height: 1.38; color: var(--tinta-suave); font-family: var(--tex);
  border-top: .8px solid var(--tinta-suave); padding-top: .35em; margin: .6em 0 .8em;
}
pluto-output .markdown div.admonition.margen > .admonition-title { font-weight: normal; font-style: italic; color: var(--tinta-suave); }
pluto-output .markdown div.admonition.margen p { text-align: left; }
@media (min-width: 1100px) {
  pluto-output .markdown div.admonition.margen, .margen-html {
    position: absolute; right: -300px; width: 262px; margin-top: .2em;
  }
}

/* ════════════ CAPÍTULOS ════════════ */
.capitulo { font-family: var(--tex); color: var(--tinta); margin: 3.2rem 0 1rem; }
.capitulo .cap-num { font-variant: small-caps; letter-spacing: .12em; font-size: 1.05rem; color: var(--tinta-suave); }
.capitulo h1 { font-family: var(--tex) !important; font-weight: bold; font-size: 2.35rem !important; line-height: 1.12; margin: .15em 0 .45em !important; border: none !important; color: var(--tinta) !important; }
.capitulo .cap-regla { height: 1.6px; background: var(--regla); margin: .2em 0 1em; }
.capitulo .epigrafe { margin: 0 0 1.2em auto; max-width: 62%; text-align: right; font-style: italic; font-size: 1rem; line-height: 1.4; }
.capitulo .epigrafe small { display: block; font-style: normal; font-variant: small-caps; margin-top: .3em; color: var(--tinta-suave); }
.capitulo .cap-libro { font-size: .92rem; color: var(--tinta-suave); }
.capitulo .cap-metas { font-size: 1rem; margin-top: .7em; }
.capitulo .cap-metas ul { margin: .2em 0 0 1.2em; padding: 0; }

/* ════════════ FIGURAS ════════════ */
figure.figura { margin: 1.1em auto; text-align: center; }
figure.figura figcaption { font-family: var(--tex); font-size: .95rem; color: var(--tinta); margin: .45em auto 0; max-width: 88%; text-align: center; line-height: 1.35; }
figure.figura figcaption b { font-weight: bold; }
.lienzo-marco { display: flex; justify-content: center; overflow-x: auto; }
.lienzo-marco svg { max-width: 100%; height: auto; }
.lado-a-lado { display: flex; flex-wrap: wrap; gap: 1rem; align-items: flex-start; justify-content: center; }
.lado-a-lado > * { flex: 1 1 280px; min-width: 0; }

/* ════════════ OBJETOS MATEMÁTICOS ════════════ */
.instancia { font-family: var(--tex); margin: .8em 0; }
.instancia-titulo { font-size: 1rem; margin-bottom: .35em; }
.instancia-titulo .ok { color: var(--verde); margin-left: .5em; }
.instancia-titulo .mal { color: var(--rojo); margin-left: .5em; }
.instancia-cuerpo { display: flex; flex-wrap: wrap; gap: 1rem; align-items: center; justify-content: center; }
.instancia-cuerpo > div { flex: 1 1 300px; min-width: 0; }
table.datos { border-collapse: collapse; margin: .4em auto; font-family: var(--tex); font-size: .98rem; border-top: 1.4px solid var(--regla); border-bottom: 1.4px solid var(--regla); }
table.datos th { text-align: right; padding: .25em .7em; font-weight: normal; font-style: italic; white-space: nowrap; border: none !important; background: none !important; }
table.datos td { padding: .25em .7em; border: none !important; background: none !important; }
.mapa { white-space: nowrap; margin-right: .5em; }
.mini-titulo { font-family: var(--tex); font-size: .92rem; color: var(--tinta-suave); text-align: center; margin: .3em 0; }
.problemas { font-family: var(--tex); font-size: .98rem; border-left: 2.2px solid var(--rojo); padding: .3em .9em; }
.problemas ul { margin: .3em 0 0 1.1em; padding: 0; }
.falla { font-family: var(--tex); border: 1.4px solid var(--rojo); padding: .7em 1em; margin: .8em 0; }
.falla ul { margin: .4em 0 .4em 1.2em; padding: 0; }
.vacio { font-family: var(--tex); font-style: italic; text-align: center; padding: .8em; color: var(--tinta-suave); }
.contador { font-family: var(--tex); text-align: center; font-size: 1rem; margin: .4em 0; }
.galeria-morfismos { display: grid; grid-template-columns: repeat(auto-fill, minmax(230px, 1fr)); gap: .6rem; }
.galeria-morfismo { text-align: center; font-family: var(--tex); font-size: .9rem; }
.comprobacion { font-family: var(--tex); margin: .8em 0; border-top: 1.4px solid var(--regla); border-bottom: 1.4px solid var(--regla); padding: .4em .2em; }
.comprobacion .comp-titulo { font-variant: small-caps; letter-spacing: .04em; margin-bottom: .2em; }
.comprobacion table { width: 100%; border-collapse: collapse; }
.comprobacion td { padding: .2em .4em; border: none !important; background: none !important; font-size: .98rem; }
.comprobacion td.ok { color: var(--verde); width: 1.5em; }
.comprobacion td.mal { color: var(--rojo); width: 1.5em; }
.comprobacion td.num { text-align: right; white-space: nowrap; color: var(--tinta-suave); }
.ecuaciones { font-family: var(--tex); text-align: center; font-size: 1rem; margin-top: .3em; }
.tenue { color: var(--tinta-suave); }

/* ════════════ CONTROLES ════════════ */
.campo-texto { font-family: var(--tt); font-size: 1rem; padding: .25em .5em; border: 1px solid var(--tinta-suave); border-radius: 2px; background: var(--papel); color: var(--tinta); }
.opciones { display: flex; flex-direction: column; gap: .25em; font-family: var(--tex); }
.opciones.fila { flex-direction: row; flex-wrap: wrap; gap: .4em 1.4em; }
.opc { cursor: pointer; display: inline-flex; align-items: baseline; gap: .4em; }
.deslizador { display: inline-flex; align-items: center; gap: .6em; font-family: var(--tex); }
.deslizador input { accent-color: var(--tinta); width: 220px; }
.deslizador output { min-width: 2.5em; font-variant-numeric: tabular-nums; }
details.plegable { font-family: var(--tex); margin: .7em 0; }
details.plegable summary { cursor: pointer; font-style: italic; color: var(--azul); }
details.plegable[open] summary { margin-bottom: .4em; }
.espera { font-family: var(--tex); font-style: italic; color: var(--tinta-suave); }

/* ════════════ EDITOR DE GRÁFICAS ════════════ */
.editor { font-family: var(--tex); border-top: 1.4px solid var(--regla); border-bottom: 1.4px solid var(--regla); padding: .4em 0; }
.editor svg { display: block; margin: 0 auto; background: var(--papel-2); cursor: crosshair; touch-action: none; max-width: 100%; height: auto; }
.editor .barra { display: flex; flex-wrap: wrap; gap: .6em; justify-content: center; align-items: center; margin-top: .4em; font-size: .95rem; }
.editor button { font-family: var(--tex); font-size: .95rem; padding: .15em .7em; border: 1px solid var(--tinta-suave); background: var(--papel); color: var(--tinta); border-radius: 2px; cursor: pointer; }
.editor .ayuda { color: var(--tinta-suave); font-style: italic; }

/* ════════════ PORTADA ════════════ */
.portada { font-family: var(--tex); color: var(--tinta); text-align: center; padding: 2.5rem 0 1rem; }
.portada .serie { font-variant: small-caps; letter-spacing: .14em; font-size: 1rem; color: var(--tinta-suave); }
.portada h1 { font-family: var(--tex) !important; font-size: 3.1rem !important; font-weight: bold; margin: .35em 0 .15em !important; border: none !important; line-height: 1.05; color: var(--tinta) !important; }
.portada .subtitulo { font-size: 1.35rem; font-style: italic; margin-bottom: 1.4em; }
.portada .autores { font-size: 1.1rem; line-height: 1.5; }
.portada .fecha { font-size: 1.05rem; margin-top: .7em; }
.portada svg { display: block; margin: 1.4em auto .6em; max-width: 100%; height: auto; }
.resumen-portada { font-family: var(--tex); max-width: 600px; margin: 1.2em auto 2em; font-size: 1.02rem; line-height: 1.48; text-align: justify; hyphens: auto; }
.resumen-portada .titulo { text-align: center; font-weight: bold; font-variant: small-caps; letter-spacing: .06em; margin-bottom: .4em; }

/* ════════════ ÍNDICE GENERAL ════════════ */
.indice-general { font-family: var(--tex); max-width: 640px; margin: 1em auto 2.5em; }
.indice-general h2 { font-family: var(--tex) !important; font-size: 1.6rem !important; font-weight: bold; border: none !important; margin-bottom: .6em !important; }
.indice-general .linea { display: flex; align-items: baseline; gap: .5em; cursor: pointer; padding: .06em 0; }
.indice-general .linea:hover .t { color: var(--enlace); }
.indice-general .linea .n { min-width: 2.6em; }
.indice-general .linea .puntos { flex: 1; border-bottom: 1.5px dotted var(--tinta-suave); transform: translateY(-.25em); }
.indice-general .cap { font-weight: bold; margin-top: .7em; }
.indice-general .sec { margin-left: 2.6em; font-size: .98rem; }
.indice-general .sec .n { min-width: 2.4em; }

/* ════════════ ÍNDICE FLOTANTE ════════════ */
nav.indice-flotante { display: none; }
@media (min-width: 1380px) {
  nav.indice-flotante {
    display: block; position: fixed; left: 18px; top: 84px; width: 228px; max-height: calc(100vh - 120px); overflow-y: auto;
    font-family: var(--tex); font-size: .9rem; line-height: 1.3; color: var(--tinta); z-index: 20;
  }
  nav.indice-flotante .tit { font-variant: small-caps; letter-spacing: .08em; margin-bottom: .5em; color: var(--tinta-suave); }
  nav.indice-flotante a { display: block; color: var(--tinta-suave); text-decoration: none; padding: .14em 0 .14em .6em; border-left: 1.5px solid transparent; cursor: pointer; }
  nav.indice-flotante a.sec { padding-left: 1.5em; font-size: .84rem; }
  nav.indice-flotante a.activo { color: var(--tinta); border-left-color: var(--tinta); }
  nav.indice-flotante a:hover { color: var(--enlace); }
}

/* ════════════ PIE ════════════ */
.pie { font-family: var(--tex); text-align: center; color: var(--tinta-suave); font-size: .95rem; margin: 3em 0 1em; padding-top: 1em; border-top: .8px solid var(--tinta-suave); }

@media (prefers-reduced-motion: reduce) { svg * { animation: none !important; } }
</style>
<nav class="indice-flotante"><div class="tit">Contenido</div><div class="lista"></div></nav>
<script>
document.documentElement.lang = 'es';
const nav = currentScript.parentElement.querySelector('nav.indice-flotante');
const lista = nav.querySelector('.lista');
let firma = '';
function titulos() {
  return Array.from(document.querySelectorAll('pluto-output .capitulo h1, pluto-output .markdown h2'))
    .filter(h => !h.closest('.indice-general') && !h.closest('.portada'));
}
function construir() {
  const hs = titulos();
  const nueva = hs.map(h => h.textContent).join('|');
  if (nueva === firma) return;
  firma = nueva;
  lista.innerHTML = '';
  hs.forEach(h => {
    const a = document.createElement('a');
    a.textContent = h.textContent;
    if (h.tagName === 'H2') a.className = 'sec';
    a.addEventListener('click', e => { e.preventDefault(); h.scrollIntoView({ behavior: 'smooth', block: 'start' }); });
    a._h = h;
    lista.appendChild(a);
  });
}
// Animaciones: solo corren las que se ven
const vigilante = new IntersectionObserver(entradas => {
  for (const e of entradas) {
    const s = e.target;
    try { e.isIntersecting ? s.unpauseAnimations() : s.pauseAnimations(); } catch (err) {}
  }
}, { rootMargin: '120px' });
function vigilar() {
  document.querySelectorAll('pluto-output svg.anim:not([data-vigilado])').forEach(s => {
    s.setAttribute('data-vigilado', '1');
    vigilante.observe(s);
  });
}
function marcarActivo() {
  const enlaces = Array.from(lista.querySelectorAll('a'));
  let actual = null;
  for (const a of enlaces) { if (a._h && a._h.getBoundingClientRect().top < 140) actual = a; }
  enlaces.forEach(a => a.classList.toggle('activo', a === actual));
}
let reloj = null;
const obs = new MutationObserver(() => {
  clearTimeout(reloj);
  reloj = setTimeout(() => { construir(); vigilar(); marcarActivo(); }, 350);
});
obs.observe(document.body, { childList: true, subtree: true });
const alDesplazar = () => window.requestAnimationFrame(marcarActivo);
window.addEventListener('scroll', alDesplazar, { passive: true });
construir(); vigilar();
if (typeof invalidation !== 'undefined') invalidation.then(() => {
  obs.disconnect(); vigilante.disconnect(); window.removeEventListener('scroll', alDesplazar);
});
</script>"""

# ╔═╡ 2e35f47d-35ad-54c2-b0b4-fb4ac9fc79d1
html"""
<div class="portada">
  <div class="serie">NeoCats · Cuadernos de matemáticas · Núm. 2</div>
  <h1>Pensar en relaciones</h1>
  <div class="subtitulo">De las gráficas a las categorías, con Julia</div>
  <div class="autores">Una lectura comentada de <i>Relational Thinking: From Abstractions to Applications</i><br>
  (Aguinaldo, Dancstep, Fong y Srinivasan, Topos Institute)<br>
  y de la tesis de Sophie Libkind, <i>Composition and Computation in Dynamical Systems</i> (Stanford, 2023)</div>
  <svg class="anim" viewBox="0 0 520 330" width="520" height="330" role="img" aria-label="Un cuadrado de pushout que se dibuja solo">
    <g opacity=".22" stroke="#1d4f91" fill="#1d4f91">
      <g><animateTransform attributeName="transform" type="translate" values="0 0; 12 -8; 0 0" dur="12s" repeatCount="indefinite"/>
        <line x1="30" y1="300" x2="62" y2="284" stroke-width="1.3"/><circle cx="30" cy="300" r="4"/><circle cx="62" cy="284" r="4"/><circle cx="48" cy="318" r="4"/><line x1="30" y1="300" x2="48" y2="318" stroke-width="1.3"/></g>
      <g><animateTransform attributeName="transform" type="translate" values="0 0; -10 10; 0 0" dur="14s" repeatCount="indefinite"/>
        <line x1="470" y1="30" x2="500" y2="52" stroke-width="1.3"/><circle cx="470" cy="30" r="4"/><circle cx="500" cy="52" r="4"/></g>
      <g><animateTransform attributeName="transform" type="translate" values="0 0; 8 8; 0 0" dur="10s" repeatCount="indefinite"/>
        <circle cx="470" cy="300" r="4"/><circle cx="498" cy="288" r="4"/><line x1="470" y1="300" x2="498" y2="288" stroke-width="1.3"/></g>
    </g>
    <g font-family="'CM Serif', 'Latin Modern Roman', 'CMU Serif', Georgia, serif" font-style="italic" fill="#1b1b1f" text-anchor="middle">
      <text x="110" y="89" font-size="27">K</text>
      <text x="410" y="89" font-size="27">X</text>
      <text x="110" y="269" font-size="27">Y</text>
      <text x="410" y="269" font-size="27">P</text>
      <text x="260" y="67" font-size="20">f</text>
      <text x="89" y="185" font-size="20">g</text>
      <text x="436" y="185" font-size="20">i<tspan font-size="14" dy="5">X</tspan></text>
      <text x="260" y="297" font-size="20">i<tspan font-size="14" dy="5">Y</tspan></text>
    </g>
    <g fill="none" stroke="#1b1b1f" stroke-width="1.5">
      <path d="M 134 80 L 384 80" pathLength="1" stroke-dasharray="1" stroke-dashoffset="1">
        <animate attributeName="stroke-dashoffset" values="1;0;0;1" keyTimes="0;0.12;0.9;1" dur="9s" repeatCount="indefinite"/></path>
      <path d="M 110 100 L 110 238" pathLength="1" stroke-dasharray="1" stroke-dashoffset="1">
        <animate attributeName="stroke-dashoffset" values="1;1;0;0;1" keyTimes="0;0.06;0.18;0.9;1" dur="9s" repeatCount="indefinite"/></path>
      <path d="M 410 100 L 410 238" pathLength="1" stroke-dasharray="1" stroke-dashoffset="1">
        <animate attributeName="stroke-dashoffset" values="1;1;0;0;1" keyTimes="0;0.16;0.3;0.9;1" dur="9s" repeatCount="indefinite"/></path>
      <path d="M 134 260 L 384 260" pathLength="1" stroke-dasharray="1" stroke-dashoffset="1">
        <animate attributeName="stroke-dashoffset" values="1;1;0;0;1" keyTimes="0;0.22;0.36;0.9;1" dur="9s" repeatCount="indefinite"/></path>
    </g>
    <path d="M 386 80 L 374 75 L 377 80 L 374 85 Z" fill="#1b1b1f" opacity="0"><animate attributeName="opacity" values="0;0;1;1;0" keyTimes="0;0.12;0.14;0.9;1" dur="9s" repeatCount="indefinite"/></path>
    <path d="M 110 240 L 105 228 L 110 231 L 115 228 Z" fill="#1b1b1f" opacity="0"><animate attributeName="opacity" values="0;0;1;1;0" keyTimes="0;0.18;0.20;0.9;1" dur="9s" repeatCount="indefinite"/></path>
    <path d="M 410 240 L 405 228 L 410 231 L 415 228 Z" fill="#1b1b1f" opacity="0"><animate attributeName="opacity" values="0;0;1;1;0" keyTimes="0;0.30;0.32;0.9;1" dur="9s" repeatCount="indefinite"/></path>
    <path d="M 386 260 L 374 255 L 377 260 L 374 265 Z" fill="#1b1b1f" opacity="0"><animate attributeName="opacity" values="0;0;1;1;0" keyTimes="0;0.36;0.38;0.9;1" dur="9s" repeatCount="indefinite"/></path>
    <path d="M 378 222 L 378 236 M 378 222 L 392 222" stroke="#1b1b1f" stroke-width="1.2" fill="none" opacity="0">
      <animate attributeName="opacity" values="0;0;1;1;0" keyTimes="0;0.4;0.46;0.9;1" dur="9s" repeatCount="indefinite"/></path>
    <path id="pt-ruta1" d="M 134 80 L 410 80 L 410 240" fill="none" stroke="none"/>
    <path id="pt-ruta2" d="M 110 100 L 110 260 L 386 260" fill="none" stroke="none"/>
    <circle r="6" fill="#b03a2e" opacity="0">
      <animate attributeName="opacity" values="0;0;1;1;0;0" keyTimes="0;0.42;0.44;0.78;0.8;1" dur="9s" repeatCount="indefinite"/>
      <animateMotion dur="9s" repeatCount="indefinite" keyPoints="0;0;1;1" keyTimes="0;0.44;0.78;1" calcMode="linear"><mpath href="#pt-ruta1"/></animateMotion>
    </circle>
    <circle r="6" fill="#1d4f91" opacity="0">
      <animate attributeName="opacity" values="0;0;1;1;0;0" keyTimes="0;0.42;0.44;0.78;0.8;1" dur="9s" repeatCount="indefinite"/>
      <animateMotion dur="9s" repeatCount="indefinite" keyPoints="0;0;1;1" keyTimes="0;0.44;0.78;1" calcMode="linear"><mpath href="#pt-ruta2"/></animateMotion>
    </circle>
    <circle cx="400" cy="252" r="10" fill="none" stroke="#5d3a8c" stroke-width="2" opacity="0">
      <animate attributeName="r" values="10;10;34;34" keyTimes="0;0.78;0.9;1" dur="9s" repeatCount="indefinite"/>
      <animate attributeName="opacity" values="0;0;.9;0;0" keyTimes="0;0.77;0.79;0.9;1" dur="9s" repeatCount="indefinite"/>
    </circle>
    <text x="260" y="325" text-anchor="middle" font-size="17" fill="#1b1b1f" font-family="'CM Serif', 'Latin Modern Roman', 'CMU Serif', Georgia, serif">
      <tspan font-style="italic">f</tspan> ⨟ <tspan font-style="italic">i</tspan><tspan font-size="12" dy="4" font-style="italic">X</tspan><tspan dy="-4"> = </tspan><tspan font-style="italic">g</tspan> ⨟ <tspan font-style="italic">i</tspan><tspan font-size="12" dy="4" font-style="italic">Y</tspan></text>
  </svg>
  <div class="fecha">Octubre de 2026</div>
</div>
<div class="resumen-portada">
  <div class="titulo">Resumen</div>
  Este cuaderno sigue, capítulo por capítulo, el libro <i>Relational Thinking</i> del Topos Institute: empieza con
  puntos y flechas, los convierte en datos, descubre los <i>esquemas</i> que describen familias enteras de gráficas,
  llega a las <i>categorías</i> y termina con la reescritura de doble pushout, que permite «buscar y reemplazar» en una
  gráfica sin dejar flechas colgantes. Cada definición aparece tres veces: como idea, como enunciado preciso y como
  código de Julia que la comprueba. Un último capítulo lleva las mismas ideas al nivel de una tesis doctoral:
  componer sistemas dinámicos pegando con pushouts. Todo está escrito en Julia puro, sin paquetes.
</div>
"""

# ╔═╡ def5f5ea-bea9-59d3-83a7-2026da817772
html"""<div class="indice-general"><h2>Índice</h2><div class="linea cap" data-t="Gráficas dirigidas"><span class="n">0</span><span class="t">Gráficas dirigidas</span><span class="puntos"></span></div><div class="linea sec" data-t="0.1 ¿Qué es una gráfica dirigida?"><span class="n">0.1</span><span class="t">¿Qué es una gráfica dirigida?</span><span class="puntos"></span></div><div class="linea sec" data-t="0.2 ¿Por qué gráficas dirigidas?"><span class="n">0.2</span><span class="t">¿Por qué gráficas dirigidas?</span><span class="puntos"></span></div><div class="linea cap" data-t="Datos"><span class="n">1</span><span class="t">Datos</span><span class="puntos"></span></div><div class="linea sec" data-t="1.1 Introducción"><span class="n">1.1</span><span class="t">Introducción</span><span class="puntos"></span></div><div class="linea sec" data-t="1.2 Mapas de origen y destino"><span class="n">1.2</span><span class="t">Mapas de origen y destino</span><span class="puntos"></span></div><div class="linea sec" data-t="1.3 La importancia de encontrar la abstracción correcta"><span class="n">1.3</span><span class="t">La importancia de encontrar la abstracción correcta</span><span class="puntos"></span></div><div class="linea cap" data-t="Sistemas dinámicos con Kiki y Bouba"><span class="n">2</span><span class="t">Sistemas dinámicos con Kiki y Bouba</span><span class="puntos"></span></div><div class="linea sec" data-t="2.1 Introducción"><span class="n">2.1</span><span class="t">Introducción</span><span class="puntos"></span></div><div class="linea sec" data-t="2.2 Gráficas que cobran vida"><span class="n">2.2</span><span class="t">Gráficas que cobran vida</span><span class="puntos"></span></div><div class="linea sec" data-t="2.3 Focos"><span class="n">2.3</span><span class="t">Focos</span><span class="puntos"></span></div><div class="linea sec" data-t="2.4 Kiki y Bouba"><span class="n">2.4</span><span class="t">Kiki y Bouba</span><span class="puntos"></span></div><div class="linea sec" data-t="2.5 Resumen"><span class="n">2.5</span><span class="t">Resumen</span><span class="puntos"></span></div><div class="linea cap" data-t="Planos (I)"><span class="n">3</span><span class="t">Planos (I)</span><span class="puntos"></span></div><div class="linea sec" data-t="3.1 Introducción"><span class="n">3.1</span><span class="t">Introducción</span><span class="puntos"></span></div><div class="linea sec" data-t="3.2 Planos"><span class="n">3.2</span><span class="t">Planos</span><span class="puntos"></span></div><div class="linea sec" data-t="3.3 Resumen"><span class="n">3.3</span><span class="t">Resumen</span><span class="puntos"></span></div><div class="linea cap" data-t="Planos (II)"><span class="n">4</span><span class="t">Planos (II)</span><span class="puntos"></span></div><div class="linea sec" data-t="4.1 Introducción"><span class="n">4.1</span><span class="t">Introducción</span><span class="puntos"></span></div><div class="linea sec" data-t="4.2 Gráficas reflexivas (en teoría)"><span class="n">4.2</span><span class="t">Gráficas reflexivas (en teoría)</span><span class="puntos"></span></div><div class="linea sec" data-t="4.3 Gráficas no dirigidas"><span class="n">4.3</span><span class="t">Gráficas no dirigidas</span><span class="puntos"></span></div><div class="linea sec" data-t="4.4 Otros esquemas"><span class="n">4.4</span><span class="t">Otros esquemas</span><span class="puntos"></span></div><div class="linea sec" data-t="4.5 Resumen"><span class="n">4.5</span><span class="t">Resumen</span><span class="puntos"></span></div><div class="linea cap" data-t="Categorías"><span class="n">5</span><span class="t">Categorías</span><span class="puntos"></span></div><div class="linea sec" data-t="5.1 Introducción"><span class="n">5.1</span><span class="t">Introducción</span><span class="puntos"></span></div><div class="linea sec" data-t="5.2 Inyecciones de gráficas"><span class="n">5.2</span><span class="t">Inyecciones de gráficas</span><span class="puntos"></span></div><div class="linea sec" data-t="5.3 Morfismos de gráficas"><span class="n">5.3</span><span class="t">Morfismos de gráficas</span><span class="puntos"></span></div><div class="linea sec" data-t="5.4 La categoría de instancias"><span class="n">5.4</span><span class="t">La categoría de instancias</span><span class="puntos"></span></div><div class="linea sec" data-t="5.5 Resumen"><span class="n">5.5</span><span class="t">Resumen</span><span class="puntos"></span></div><div class="linea cap" data-t="Combinar gráficas"><span class="n">6</span><span class="t">Combinar gráficas</span><span class="puntos"></span></div><div class="linea sec" data-t="6.1 Introducción"><span class="n">6.1</span><span class="t">Introducción</span><span class="puntos"></span></div><div class="linea sec" data-t="6.2 Combinar gráficas con memes"><span class="n">6.2</span><span class="t">Combinar gráficas con memes</span><span class="puntos"></span></div><div class="linea sec" data-t="6.3 ¿Qué es un pushout?"><span class="n">6.3</span><span class="t">¿Qué es un pushout?</span><span class="puntos"></span></div><div class="linea sec" data-t="6.4 ¡Hora de rompecabezas!"><span class="n">6.4</span><span class="t">¡Hora de rompecabezas!</span><span class="puntos"></span></div><div class="linea sec" data-t="6.5 Pushouts en AlgebraicJulia"><span class="n">6.5</span><span class="t">Pushouts en AlgebraicJulia</span><span class="puntos"></span></div><div class="linea sec" data-t="6.6 Resumen"><span class="n">6.6</span><span class="t">Resumen</span><span class="puntos"></span></div><div class="linea cap" data-t="Gráficas que evolucionan"><span class="n">7</span><span class="t">Gráficas que evolucionan</span><span class="puntos"></span></div><div class="linea sec" data-t="7.1 Introducción"><span class="n">7.1</span><span class="t">Introducción</span><span class="puntos"></span></div><div class="linea sec" data-t="7.2 Cómo especificar «buscar y reemplazar»"><span class="n">7.2</span><span class="t">Cómo especificar «buscar y reemplazar»</span><span class="puntos"></span></div><div class="linea sec" data-t="7.3 Encontrar una coincidencia"><span class="n">7.3</span><span class="t">Encontrar una coincidencia</span><span class="puntos"></span></div><div class="linea sec" data-t="7.4 Borrar vértices y aristas"><span class="n">7.4</span><span class="t">Borrar vértices y aristas</span><span class="puntos"></span></div><div class="linea sec" data-t="7.5 Agregar vértices y aristas"><span class="n">7.5</span><span class="t">Agregar vértices y aristas</span><span class="puntos"></span></div><div class="linea sec" data-t="7.6 Algunos usos de buscar y reemplazar en gráficas"><span class="n">7.6</span><span class="t">Algunos usos de buscar y reemplazar en gráficas</span><span class="puntos"></span></div><div class="linea sec" data-t="7.7 Buscar y reemplazar en AlgebraicJulia"><span class="n">7.7</span><span class="t">Buscar y reemplazar en AlgebraicJulia</span><span class="puntos"></span></div><div class="linea sec" data-t="7.8 Pensar relacionalmente es difícil, pero vale la pena"><span class="n">7.8</span><span class="t">Pensar relacionalmente es difícil, pero vale la pena</span><span class="puntos"></span></div><div class="linea sec" data-t="7.9 Resumen"><span class="n">7.9</span><span class="t">Resumen</span><span class="puntos"></span></div><div class="linea cap" data-t="Una mirada más allá: modelos del mundo que evolucionan"><span class="n">8</span><span class="t">Una mirada más allá: modelos del mundo que evolucionan</span><span class="puntos"></span></div><div class="linea sec" data-t="8.1 Introducción"><span class="n">8.1</span><span class="t">Introducción</span><span class="puntos"></span></div><div class="linea sec" data-t="8.2 La configuración de un cubo"><span class="n">8.2</span><span class="t">La configuración de un cubo</span><span class="puntos"></span></div><div class="linea sec" data-t="8.3 Trabajar en una cocina"><span class="n">8.3</span><span class="t">Trabajar en una cocina</span><span class="puntos"></span></div><div class="linea sec" data-t="8.4 Resumen"><span class="n">8.4</span><span class="t">Resumen</span><span class="puntos"></span></div><div class="linea cap" data-t="Nivel tesis: componer sistemas dinámicos"><span class="n">9</span><span class="t">Nivel tesis: componer sistemas dinámicos</span><span class="puntos"></span></div><div class="linea sec" data-t="9.1 Dos estilos de composición"><span class="n">9.1</span><span class="t">Dos estilos de composición</span><span class="puntos"></span></div><div class="linea sec" data-t="9.2 Sistemas abiertos y diagramas"><span class="n">9.2</span><span class="t">Sistemas abiertos y diagramas</span><span class="puntos"></span></div><div class="linea sec" data-t="9.3 Lotka–Volterra armado con tres piezas"><span class="n">9.3</span><span class="t">Lotka–Volterra armado con tres piezas</span><span class="puntos"></span></div><div class="linea sec" data-t="9.4 Composición jerárquica: la funtorialidad, comprobada"><span class="n">9.4</span><span class="t">Composición jerárquica: la funtorialidad, comprobada</span><span class="puntos"></span></div><div class="linea sec" data-t="9.5 El método de Euler es una transformación natural"><span class="n">9.5</span><span class="t">El método de Euler es una transformación natural</span><span class="puntos"></span></div><div class="linea sec" data-t="9.6 Resumen"><span class="n">9.6</span><span class="t">Resumen</span><span class="puntos"></span></div><div class="linea cap" data-t="Glosario"><span class="n">Apéndice A</span><span class="t">Glosario</span><span class="puntos"></span></div><div class="linea cap" data-t="Referencias"><span class="n">Apéndice B</span><span class="t">Referencias</span><span class="puntos"></span></div><div class="linea cap" data-t="Detrás del telón"><span class="n">Apéndice C</span><span class="t">Detrás del telón</span><span class="puntos"></span></div><script>
const raiz = currentScript.parentElement;
raiz.querySelectorAll('.linea').forEach(l => l.addEventListener('click', () => {
  const t = l.dataset.t;
  const h = Array.from(document.querySelectorAll('pluto-output .capitulo h1, pluto-output .markdown h2')).find(x => x.textContent.trim() === t);
  if (h) h.scrollIntoView({ behavior: 'smooth', block: 'start' });
}));
</script></div>"""

# ╔═╡ b577b727-b2e3-5148-8919-44821267da51
capitulo("Antes de empezar", "Cómo leer este cuaderno")

# ╔═╡ bebd8a77-11aa-5319-8bbb-e4fc238acb5f
md"""
**Siguiendo el libro de cerca.** Los capítulos 0 a 8 corresponden, con el mismo número, a los capítulos 0 a 8 de *Relational Thinking*, y sus secciones llevan los mismos números (1.2, 5.3, 7.4…). Los rompecabezas del libro aparecen con su número original. Cuando agregamos algo que el libro no trae (demostraciones, la definición formal de categoría, el capítulo 9 sobre la tesis), lo decimos en una nota al margen.

**Entornos.** Como en un libro de matemáticas escrito en LaTeX:

| Entorno | Para qué sirve |
|:--------|:---------------|
| **Definición** | Fija con precisión el significado de una palabra |
| **Proposición**, **Teorema** | Afirmaciones que se demuestran; su enunciado va en itálica |
| *Demostración* | Termina con ∎ |
| **Ejemplo**, *Observación* | Casos concretos y comentarios |
| **Rompecabezas** | Los ejercicios del libro, con la respuesta comprobada en Julia |
| **Pausa para pensar** | Las preguntas que el libro deja para reflexionar |
| **Rigor** | Lugares donde la definición precisa corrige o completa al libro |

**El código es parte de las matemáticas.** Las celdas de Julia que ves son la traducción literal de las definiciones: una gráfica *es* un par de vectores, un morfismo *es* un diccionario de vectores, un pushout *es* un cociente calculado con unión-búsqueda. Las celdas que solo dibujan están escondidas en *Detrás del telón*, al final.

**Interactivo.** Hay un editor para dibujar gráficas con el ratón, deslizadores y preguntas que se corrigen solas. Cambia lo que quieras: todo se recalcula.

**Rápido.** No se instala ningún paquete y las animaciones se detienen cuando salen de la pantalla.

**Palabras.** Usamos la terminología de las tesis y cursos de matemáticas en México: *gráfica* (no *grafo*), *vértice*, *flecha*, *lazo*, *funtor*. Los términos sin una traducción única y establecida (*pushout*, *span*, *cospan*, *operad*) se quedan en inglés, con sus equivalentes en español en el glosario.
"""

# ╔═╡ 9e4ae011-d26e-54be-b4c1-7ca8969772f9
capitulo(0, "Gráficas dirigidas";
    libro = "Sigue el capítulo 0 del libro.",
    metas = ["reconocer una gráfica dirigida en situaciones de la vida diaria;",
             "ver que historias distintas pueden tener **la misma forma**;",
             "entender por qué las gráficas son **frágiles**: el problema de las flechas colgantes."])

# ╔═╡ 01018d62-2603-59e0-b3ac-fe5c3a31c7ce
md"""
## 0.1 ¿Qué es una gráfica dirigida?

Piensa en un esquema de jugadas de futbol, en las huellas de un animal en la nieve o en un cuestionario de «si respondiste sí, pasa a la pregunta 5». Todos tienen **flechas**, y todos tienen **puntos** (jugadores, huellas, preguntas) unidos por esas flechas. Ese es nuestro punto de partida: un sistema de modelado sencillo llamado **gráfica dirigida**. A los puntos les llamamos **vértices**.

Las reglas del juego son pocas:

1. toda flecha tiene un vértice de **origen** y un vértice de **destino**;
2. varias flechas pueden unir el mismo par de vértices;
3. un vértice puede ser origen y destino de muchas flechas;
4. se permiten **lazos** (flechas de un vértice a sí mismo), incluso varios en el mismo vértice;
5. una gráfica puede tener varias piezas desconectadas;
6. un vértice no tiene que estar conectado a nada.
"""

# ╔═╡ 39bc1e58-2ae2-59de-99f1-d6dca7f62ddb
reglas = grafica(7, [1, 1, 1, 2, 3, 3, 3, 5], [2, 2, 3, 3, 3, 3, 1, 6];
    pos = [(70, 140), (200, 60), (200, 210), (340, 140), (360, 60), (470, 60), (460, 210)])

# ╔═╡ 10e9f61f-ef2b-51e3-aa1b-74439436eb2f
md"""
En la gráfica de arriba están las seis reglas: dos flechas paralelas de 1 a 2 (regla 2), el vértice 3 es destino de cuatro flechas y origen de tres (regla 3), tiene **dos** lazos (regla 4), los vértices 5 y 6 forman otra pieza (regla 5), y los vértices 4 y 7 están solos (regla 6). La tabla de la derecha es lo que ve la computadora; la entenderemos en el capítulo 1.

Veamos tres situaciones que se modelan con gráficas dirigidas.

!!! ejemplo "Romance mitológico"
    *Afrodita ama a Adonis y Adonis ama a Afrodita. Pero Adonis también ama a Narciso. Y Narciso, claro, solo se ama a sí mismo.* Los vértices son personajes; una flecha va de quien ama a quien es amado.
"""

# ╔═╡ f6677ad1-c7b9-50c6-b51a-8002feba59ca
romance = grafica(3, [1, 2, 2, 3], [2, 1, 3, 3];
    nombres = ["Afrodita", "Adonis", "Narciso"], pos = [(110, 150), (260, 150), (410, 150)])

# ╔═╡ c5a4052c-ae32-5a5c-8641-f5f42e247ec6
md"""
!!! ejemplo "Folleto de un centro de esquí"
    *Desde la cabaña, el telesilla te sube a la cima de la montaña. Bajando por la pista llegas a un pueblo del valle, donde puedes esquiar a campo traviesa dando vueltas. Si no sabes esquiar, no te preocupes: sube a ver la vista y regresa en el telesilla.* Los vértices son lugares; las flechas, formas de ir de uno a otro.
"""

# ╔═╡ 2bc6794d-1ae1-5991-a871-f7beeda01a7d
esqui = grafica(3, [1, 2, 2, 3], [2, 1, 3, 3];
    nombres = ["Cabaña", "Cima", "Pueblo"], pos = [(110, 210), (260, 80), (410, 210)])

# ╔═╡ ce07c4a7-1dbe-5589-abbf-7939bb8cf64f
md"""
!!! ejemplo "Quién lava los platos"
    *Paul y su esposa Toni se turnaban para lavar los platos. Luego llegó a vivir con ellos su amigo Tuco, a quien le encanta lavar, y desde entonces siempre lo hace él. Toni fue la última antes de Tuco.* Una flecha une a dos personas que pueden lavar en días consecutivos.
"""

# ╔═╡ 8a9729aa-56cc-5e77-9625-fb66242a9c97
platos = grafica(3, [1, 2, 2, 3], [2, 1, 3, 3];
    nombres = ["Paul", "Toni", "Tuco"], pos = [(110, 150), (260, 220), (410, 150)])

# ╔═╡ ba738f19-9f61-5f1c-9f6d-e05e2a881fe4
md"""
Vistas por separado, las tres historias no se parecen en nada. Pero sus gráficas muestran que tienen **la misma estructura**: en el fondo son la misma gráfica, que podemos dibujar sin nombres. La animación siguiente manda cada personaje del romance a un lugar del folleto y cada flecha a una flecha, sin romper nada. En el capítulo 5 a esta correspondencia la llamaremos *isomorfismo*.
"""

# ╔═╡ a156f93c-ba59-5884-a471-3295f1663397
figura(first(morfismos(romance, esqui; inyectivo = true)), "0.1",
    "El romance y el folleto de esquí tienen la misma forma: cada vértice y cada flecha de la izquierda viajan a su lugar en la derecha.")

# ╔═╡ 454a1e7f-d47a-53ab-a33a-04819ec4728e
md"""
## 0.2 ¿Por qué gráficas dirigidas?

Las gráficas dirigidas son sencillas y versátiles: fáciles de dibujar, ricas en aplicaciones y, al mismo tiempo, una herramienta *formal* que una computadora puede manejar. Pero la verdadera razón para estudiarlas es que son **frágiles**.

Supón que modelaste algo con una gráfica en la computadora y tu entendimiento de la situación cambia. Tendrás que **editar** la gráfica: agregar o borrar vértices y flechas. Si lo haces sin cuidado, puedes terminar con una *gráfica rota*: una flecha sin origen o sin destino. Pruébalo: borra un vértice del romance «a lo bruto», dejando las flechas como estaban.

**vértice que se borra:** $(@bind v_borrado deslizador(1:3, default = 2))
"""

# ╔═╡ 8d065de9-852b-5f74-bb6a-87733cae7d06
dibujar_rota(romance, v_borrado)

# ╔═╡ a847335a-d8e6-5c98-9c92-4eb68b214c6d
md"""
La gráfica no se volvió *incorrecta*: se volvió **absurda**. «Afrodita ama a…» no es verdadero ni falso; es una frase sin terminar. Al editar en serio (juntar gráficas, separar pedazos, reemplazar partes) aparecen muchísimos casos especiales en los que una flecha puede quedar suelta. El libro llama a este peligro la **condición de flecha colgante** (*dangling edge condition*).

!!! clave "La misión de este cuaderno"
    Este libro trata de una solución poderosa y elegante a este problema, que usa el **pensamiento relacional**. En el capítulo 7 llegaremos a la **reescritura de doble pushout**: una manera de reemplazar partes de una gráfica sin pensar ni una sola vez en las flechas colgantes. Para llegar ahí hay que subir una escalera de abstracción.
"""

# ╔═╡ a92108ce-ce1c-5eb6-a4df-79b13cada8fe
figura(ESCALERA_HTML, "0.2", "La escalera de la abstracción del libro: dibujos, datos, planos (esquemas) y universos (categorías). Cada peldaño olvida los detalles del anterior.")

# ╔═╡ 96f50f02-2a37-59e8-a327-aef825925957
capitulo(1, "Datos";
    epigrafe = "El atasco en el que ni siquiera sabes que estás se rompe con un cambio de representación.",
    autor = "Michael Sorkin, *Two Hundred Fifty Things an Architect Should Know*",
    libro = "Sigue el capítulo 1 del libro.",
    metas = ["describir una gráfica con dos **funciones**, origen y destino;",
             "pasar de un dibujo a sus datos y de los datos a un dibujo;",
             "demostrar por qué la representación **flechas primero** no tiene flechas colgantes."])

# ╔═╡ 046a8922-00e8-5893-b7f6-6124b92d4171
md"""
## 1.1 Introducción

Los humanos somos criaturas visuales, y una gráfica dirigida aprovecha esa habilidad: en una sola mirada ves *esta* flecha unida a *estos* vértices, *este* vértice sin flechas, y así. Compara el romance mitológico escrito en prosa con su dibujo del capítulo 0: el texto exige concentración; el dibujo lo dice todo de golpe.

Las computadoras, en cambio, **no** son visuales. Si queremos que una computadora piense con nosotros, hay que describirle la gráfica de otra manera.

## 1.2 Mapas de origen y destino

La idea del libro es preguntarle a **cada flecha** dos cosas: *¿de dónde sales?* y *¿a dónde llegas?* Numeramos los vértices y las flechas, y anotamos las respuestas.
"""

# ╔═╡ ccb1b875-f1bf-571d-bf62-dab8bd3be6c8
figura(mapas_origen_destino(romance), "1.1",
    "Los mapas de origen y de destino del romance (Afrodita = 1, Adonis = 2, Narciso = 3). De **cada** flecha sale **exactamente una** línea en cada mapa.")

# ╔═╡ f0f3f684-d519-5371-8ca4-0ed257cd4d7f
md"""
!!! definicion "Definición 1.1 (Gráfica dirigida)"
    Una **gráfica dirigida** ``G`` consta de un conjunto finito ``A`` de **flechas**, un conjunto finito ``V`` de **vértices** y dos **funciones**
    ```math
    \operatorname{src},\ \operatorname{tgt} \colon A \longrightarrow V,
    ```
    llamadas **origen** (*source*) y **destino** (*target*). Si ``\operatorname{src}(a) = v`` y ``\operatorname{tgt}(a) = w`` decimos que ``a`` es una flecha de ``v`` a ``w`` y escribimos ``a \colon v \to w``.

!!! margen "Ojo con el nombre"
    En los cursos de teoría de gráficas de la UNAM, *gráfica* suele significar algo más restringido (sin dirección, sin lazos ni aristas repetidas). La Definición 1.1 permite lazos y flechas paralelas: es una *multidigráfica con lazos*, también llamada *carcaj* (*quiver*). En España se dice *grafo*.

En la computadora tomamos ``V = \{1, \dots, n\}`` y ``A = \{1, \dots, m\}``, y guardamos cada función como un **vector**: la entrada ``a`` del vector `src` es el origen de la flecha ``a``. Eso es todo lo que la computadora necesita saber del romance:
"""

# ╔═╡ bf791513-e005-59ca-bce7-002176af2d9e
romance.fun

# ╔═╡ 0df0c559-c66a-5e59-b814-bcc230e1c1cd
md"""
### Tu turno: dibuja y mira los datos

Dibuja en el lienzo (clic en el fondo para un vértice; clic en un vértice y luego en otro para una flecha; el mismo vértice dos veces para un lazo). Abajo aparecen, al instante, los datos que ve la computadora y sus dos mapas.
"""

# ╔═╡ a9fe1ee1-c721-5b99-8a36-3ee3509a4f97
@bind dibujo editor_grafica(inicial = "3|110,150;260,150;410,150|1,2,2,3|2,1,3,3")

# ╔═╡ 2a0e3159-f4e6-5a4e-b065-64664f907eac
mi_grafica = leer_grafica(dibujo)

# ╔═╡ ad7d9d41-cdb1-52d6-99d6-12024a258be9
mi_grafica.tam[:A] == 0 ? espera("Dibuja al menos una flecha para ver sus mapas.") : mapas_origen_destino(mi_grafica)

# ╔═╡ 4d37a97a-cb3e-5441-804e-08d2a67f9f15
md"""
### Rompecabezas

!!! rompecabezas "Rompecabezas 1"
    ¿Puedes dibujar en papel las gráficas dirigidas que describen estos mapas de origen y destino? Primero dibújalas tú; después abre la solución.
"""

# ╔═╡ e656c50c-0568-5cd5-9d63-d0cee2b24047
figura(mapas_origen_destino(grafica(3, [2, 1, 3], [1, 3, 2])), "1.2", "Rompecabezas 1(a): tres flechas y tres vértices.")

# ╔═╡ 3117de57-c042-59ef-8b1f-a2ad147cfa70
plegable("Ver la gráfica 1(a)", juntar(dibujar(grafica(3, [2, 1, 3], [1, 3, 2])),
    md"Es un **ciclo**: 2 → 1 → 3 → 2. Cada vértice es origen de exactamente una flecha y destino de exactamente una."))

# ╔═╡ b726adcd-01d5-556e-bef9-241b55a98550
figura(mapas_origen_destino(grafica(7, [1, 1, 1, 1, 1, 1], [2, 3, 4, 5, 6, 7])), "1.3", "Rompecabezas 1(b): seis flechas y siete vértices.")

# ╔═╡ 9b1fae95-4977-5fbc-957b-449e99d207f7
plegable("Ver la gráfica 1(b)", juntar(dibujar(grafica(7, [1, 1, 1, 1, 1, 1], [2, 3, 4, 5, 6, 7])),
    md"Es una **estrella**: todas las flechas salen del vértice 1. En el mapa de origen las seis líneas llegan al mismo vértice, y eso está perfectamente permitido: una función puede mandar muchos elementos al mismo lugar."))

# ╔═╡ 9fe0d494-697e-5c76-afe0-d9d09c4444da
md"""
!!! rompecabezas "Rompecabezas 2 y 3"
    Mira las gráficas (a) y (b). Escribe sus mapas de origen y destino como listas de números: llena los vectores de la celda de abajo. El orden de las flechas es el de sus etiquetas.
"""

# ╔═╡ e1c09f89-8011-543c-a0f8-161ef8457fc1
lado_a_lado(
    figura(dibujar(grafica(2, [2, 1], [1, 2]; pos = [(260, 60), (260, 230)]); ancho = 260, rotulos = true, alto = 260), "1.4", "(a) Dos vértices y dos flechas: la flecha 1 sube y la flecha 2 baja."),
    figura(dibujar(grafica(6, [1, 4, 5], [2, 3, 6]; pos = [(60, 60), (200, 60), (200, 150), (60, 150), (60, 240), (200, 240)]); ancho = 260, rotulos = true, alto = 280), "1.5", "(b) Seis vértices y tres flechas: 1 → 2, 4 → 3 y 5 → 6."))

# ╔═╡ 9c92e501-b269-55af-84bb-1ac4057113ce
begin
    rp2a_src, rp2a_tgt = missing, missing     # (a)
    rp2b_src, rp2b_tgt = missing, missing     # (b)
end

# ╔═╡ ee6057ec-f3ad-5a56-bee1-41c5e568b752
let
    pares(s, t) = sort(collect(zip(s, t)))
    resultados = String[]
    for (nombre, s, t, ss, tt) in (("(a)", rp2a_src, rp2a_tgt, [2, 1], [1, 2]), ("(b)", rp2b_src, rp2b_tgt, [1, 4, 5], [2, 3, 6]))
        if ismissing(s) || ismissing(t)
            push!(resultados, "$nombre: pendiente.")
        elseif length(s) != length(t)
            push!(resultados, "$nombre: los dos vectores deben tener la misma longitud (una entrada por flecha).")
        elseif s == ss && t == tt
            push!(resultados, "$nombre: ✓ exactamente.")
        elseif pares(s, t) == pares(ss, tt)
            push!(resultados, "$nombre: ✓ son las mismas flechas, en otro orden.")
        else
            push!(resultados, "$nombre: todavía no. Recuerda: la entrada k de `src` es el vértice de donde SALE la flecha k.")
        end
    end
    all(occursin("✓", r) for r in resultados) ? correcto(join(resultados, " ")) :
        all(occursin("pendiente", r) for r in resultados) ? pendiente() : incorrecto(join(resultados, " "))
end

# ╔═╡ e55d7307-7fa2-5215-a98a-98b3c54d2913
plegable("Solución", md"(a) `src = [2, 1]`, `tgt = [1, 2]`. (b) `src = [1, 4, 5]`, `tgt = [2, 3, 6]`.")

# ╔═╡ 451f3eab-7dca-5d46-b14b-4ca13e70128e
plegable("Rompecabezas 4: así se escribe en AlgebraicJulia", md"""
```julia
using Catlab
g = Graph(6)                                  # seis vértices
add_parts!(g, :E, 3, src = [1, 4, 5], tgt = [2, 3, 6])
to_graphviz(g)
```
En este cuaderno no usamos paquetes: `grafica(6, [1, 4, 5], [2, 3, 6])` hace lo mismo.
""")

# ╔═╡ 62d8fc3f-10a7-5844-acd2-b4af10d7d715
md"""
## 1.3 La importancia de encontrar la abstracción correcta

¿Es esta la *mejor* manera de describir una gráfica? Hagamos la prueba al revés: en vez de empezar por las flechas, **empecemos por los vértices** y preguntémosle a cada uno *¿de qué flechas eres origen?* y *¿de cuáles eres destino?*

Parece lo mismo, pero no lo es. Un vértice puede ser origen de muchas flechas o de ninguna, así que las respuestas ya no son números sino **listas de listas**. Y, peor todavía, ahora podemos escribir datos que no describen ninguna gráfica. Elijamos al azar, «vértices primero», de qué flechas es origen cada vértice:
"""

# ╔═╡ 09250e63-4c79-5135-bbb9-d7f97c1d893f
begin
    n_flechas, n_vertices = 6, 4
    origen_de = [sort(unique(rand(1:n_flechas, rand(0:3)))) for v in 1:n_vertices]   # listas de listas
    origenes_por_flecha = [count(lista -> a in lista, origen_de) for a in 1:n_flechas]
    (; origen_de, origenes_por_flecha)
end

# ╔═╡ 0a8321a5-3e6a-5d69-a87f-a9d9e5993cca
figura(mapa_vertices_primero(origen_de, n_flechas), "1.6",
    "Datos «vértices primero» elegidos al azar. Cada flecha debería tener exactamente un origen; en rojo, las que tienen 0 (colgantes) o 2 o más (¡mutantes!). Vuelve a ejecutar la celda de arriba.")

# ╔═╡ 73625934-6045-57f6-b6d0-3da01b46ba67
md"""
El libro lo llama una *carnicería*: flechas colgantes, flechas que salen de varios vértices a la vez, flechas flotando sin tocar nada. Con «flechas primero» esto **no puede pasar**:

!!! teorema "Proposición 1.2 (Flechas primero ⇒ nada cuelga)"
    Cualesquiera dos funciones ``\operatorname{src}, \operatorname{tgt} \colon A \to V`` definen una gráfica dirigida en la que cada flecha tiene exactamente un origen y exactamente un destino.

!!! demostracion "Demostración"
    Una función ``f \colon A \to V`` asigna a **cada** elemento de ``A`` **exactamente un** elemento de ``V``. Aplicado a ``\operatorname{src}`` y a ``\operatorname{tgt}``: cada flecha ``a`` tiene un único origen ``\operatorname{src}(a) \in V`` y un único destino ``\operatorname{tgt}(a) \in V``. Una flecha colgante sería una flecha sin origen o sin destino, y una mutante, una con dos; ambas contradicen que ``\operatorname{src}`` y ``\operatorname{tgt}`` sean funciones.

!!! observacion "Observación 1.3 (Lo que de verdad revisa la computadora)"
    Un vector de longitud ``m`` **ya es** una regla que a cada ``a \in \{1, \dots, m\}`` le asigna exactamente un valor: totalidad y unicidad vienen gratis. Lo único que falta comprobar es que cada valor sea un vértice que existe, ``1 \le \operatorname{src}(a) \le n``. Eso es exactamente lo que hace la función `errores` (la veremos completa en el capítulo 3). Por ejemplo:
"""

# ╔═╡ 92b258d9-f786-5073-bdf6-9287ecd03d5e
grafica(2, [1, 2], [2, 5])     # ¡el vértice 5 no existe!

# ╔═╡ 96751e58-6841-5e1b-a21f-c02d567b477d
md"""
!!! pausa "Pausa para pensar"
    ¿Por qué «flechas primero» siempre es seguro y «vértices primero» puede producir flechas colgantes?

$(@bind q_flechas opciones([
    "Porque la computadora revisa los datos antes de guardarlos",
    "Porque una función le da a cada flecha exactamente un origen y un destino",
    "Porque las gráficas pequeñas nunca tienen problemas",
]))
"""

# ╔═╡ e4330943-2686-5123-aca7-fb97a6e82fa0
corregir(q_flechas, "Porque una función le da a cada flecha exactamente un origen y un destino",
    "Es la Proposición 1.2: la garantía viene de la **definición** de función, no de una revisión adicional.",
    "Piensa en qué le exige la definición de *función* a cada elemento de su dominio.")

# ╔═╡ cd6e47a1-6bd3-5fe7-8098-f9baf3a7bb92
md"""
Comparar las dos representaciones enseña la diferencia entre una abstracción «buena» y una «mala». En «flechas primero» hay una correspondencia **exacta** entre lo que nos interesa (gráficas) y lo que los datos pueden expresar. «Vértices primero» obliga a convivir con datos absurdos y con casos especiales; es *quisquillosa*, y eso estorba para abstraer.

!!! resumen "Resumen del capítulo 1"
    Subimos el primer peldaño: de los dibujos a los **datos**. Una gráfica es ``(A, V, \operatorname{src}, \operatorname{tgt})`` con dos funciones ``A \to V`` (Definición 1.1). Como las funciones son totales y univaluadas, la representación «flechas primero» no tiene flechas colgantes (Proposición 1.2). En los capítulos 3 y 4 subiremos a los *planos* y en el 5 a las *categorías*; la abstracción correcta desde el principio es lo que nos dejará subir sin tropezar.
"""

# ╔═╡ cd06c528-7d45-5c0a-8536-be675826faa8
capitulo(2, "Sistemas dinámicos con Kiki y Bouba";
    libro = "Sigue el capítulo 2 del libro.",
    metas = ["convertir una gráfica en un **sistema dinámico** con estados y reglas de actualización;",
             "simular sistemas **discretos** (focos, semáforos) y **continuos** (estados de ánimo);",
             "ver que el comportamiento depende de las reglas **y** del estado inicial."])

# ╔═╡ c3427924-fa33-55ec-8015-d97fe9f65c22
md"""
## 2.1 Introducción

Kiki y Bouba son grandes amigos, pero muy distintos: Kiki se emociona con todo y Bouba tiende a ser gruñón. ¿Cómo cambia su ánimo cuando platican? Este capítulo responde esa pregunta con las gráficas del capítulo anterior, dándoles vida.

## 2.2 Gráficas que cobran vida

Cada gráfica del capítulo 0 describe situaciones que ocurren en el tiempo. En el folleto de esquí, por ejemplo: *una persona estaba en la cabaña, subió en telesilla y bajó esquiando al pueblo*. Para que la computadora **simule** esas situaciones hay que darle dos datos más **por cada vértice**:

1. un conjunto de **estados** posibles, y
2. una **regla de actualización** que diga cómo cambia el estado.

Las flechas se vuelven **tuberías de información**: en cada paso, el origen manda su estado por la flecha y el destino lo usa para calcular el suyo.

!!! definicion "Definición 2.1 (Sistema dinámico discreto sobre una gráfica)"
    Sea ``G = (A, V, \operatorname{src}, \operatorname{tgt})`` una gráfica dirigida. Para cada vértice ``v`` sean ``E_v`` un conjunto de **estados** y
    ```math
    \rho_v \colon E_v \times \prod_{a \in \operatorname{in}(v)} E_{\operatorname{src}(a)} \longrightarrow E_v,
    \qquad \operatorname{in}(v) = \operatorname{tgt}^{-1}(v),
    ```
    una **regla de actualización**. Un **estado global** es una elección ``x = (x_v)_{v \in V}`` con ``x_v \in E_v``, y el siguiente estado global es
    ```math
    x'_v = \rho_v\big(x_v,\ (x_{\operatorname{src}(a)})_{a \in \operatorname{in}(v)}\big).
    ```

!!! margen "En el libro"
    El libro usa los *diagramas de cableado dirigidos* de AlgebraicDynamics.jl, que generalizan esta definición (Rupel y Spivak, 2013).

La definición se traduce a Julia línea por línea:
"""

# ╔═╡ 59a66855-7549-5f66-a792-c62318d47dd9
"""
    simular_en_grafica(G, x₀, regla, pasos)

Definición 2.1 hecha código. En cada paso, el vértice `v` calcula su nuevo estado con
`regla(v, x[v], entradas)`, donde `entradas` son los estados de los orígenes de las
flechas que llegan a `v` (las «tuberías» de información). Devuelve la historia completa.
"""
function simular_en_grafica(G, x₀::Vector, regla, pasos::Int)
    historia = [copy(x₀)]
    for _ in 1:pasos
        x = historia[end]
        entradas(v) = [x[G.fun[:src][a]] for a in 1:G.tam[:A] if G.fun[:tgt][a] == v]
        push!(historia, [regla(v, x[v], entradas(v)) for v in 1:G.tam[:V]])
    end
    historia
end;

# ╔═╡ 2a5b4d42-8013-537d-96c0-db88f0fe1eeb
md"""
## 2.3 Focos

### Un foco solo

Modelemos un foco con una gráfica de **un vértice y ninguna flecha**. Su estado es *prendido* o *apagado*. Sin regla de actualización, la gráfica es una fotografía: el foco se queda como lo dejamos.

### Un foco que parpadea

La regla «si estás prendido, apágate; si estás apagado, préndete» hace que el foco parpadee. En símbolos, ``E = \{\text{prendido}, \text{apagado}\}`` y ``\rho(x) = \lnot x``. En Julia, `!x`:
"""

# ╔═╡ 5b06b190-134f-5afe-8f68-166567def24a
let
    foco = grafica(1, Int[], Int[]; nombres = ["foco"])
    parpadeo(v, x, entradas) = !x                     # ρ(x) = ¬x
    historia = simular_en_grafica(foco, [true], parpadeo, 7)
    animar_focos(foco, historia, (v, x) -> x ? "#f2c14e" : "#3a3a44"; alto = 200)
end

# ╔═╡ 75d8a794-08dd-5b64-be6d-2f16a60f7644
md"""
!!! clave "Idea clave"
    En cada paso, la regla de actualización toma el estado actual de un vértice y produce el nuevo.

### Una cadena de focos

Dos focos en un ciclo, unidos por flechas en ambos sentidos. La regla ahora es **copiar lo que llega**: ``\rho(x, (y)) = y``. El origen transmite su estado en un paso y el destino lo lee en el siguiente.

!!! rompecabezas "Rompecabezas (un estado inicial distinto)"
    ¿Qué pasa si los dos focos empiezan **prendidos**? Usa la regla de actualización para predecirlo antes de elegir la segunda opción.

**estado inicial:** $(@bind inicio_cadena opciones(["prendido y apagado", "los dos prendidos"]))
"""

# ╔═╡ 285abcd7-a273-5ca8-8892-4d1c554e4b5e
let
    cadena = grafica(2, [1, 2], [2, 1]; nombres = ["foco 1", "foco 2"], pos = [(170, 120), (350, 120)])
    copiar(v, x, entradas) = entradas[1]               # ρ(x, (y)) = y
    x₀ = inicio_cadena == "los dos prendidos" ? [true, true] : [true, false]
    animar_focos(cadena, simular_en_grafica(cadena, x₀, copiar, 8), (v, x) -> x ? "#f2c14e" : "#3a3a44"; alto = 220)
end

# ╔═╡ 1d382c2e-1dd5-5d0b-870d-80a36ac700a0
md"""
Si los dos empiezan prendidos, cada uno copia al otro y **los dos se quedan prendidos** para siempre. El comportamiento no depende solo de las reglas: también del **estado inicial**.

### Un semáforo

Agreguemos un tercer foco con la misma regla, en un ciclo. Si al principio solo el primero está prendido, la luz da vueltas: en cada instante hay **exactamente un** foco prendido. Pintemos los focos de verde, amarillo y rojo y tenemos un semáforo:
"""

# ╔═╡ 7ae4fcf3-f18f-5b46-a859-5c6fdfa473c8
let
    ciclo = grafica(3, [1, 2, 3], [2, 3, 1]; nombres = ["verde", "amarillo", "rojo"], pos = [(130, 190), (260, 70), (390, 190)])
    copiar(v, x, entradas) = entradas[1]
    colores = ["#2b9348", "#f2c14e", "#d62828"]
    animar_focos(ciclo, simular_en_grafica(ciclo, [true, false, false], copiar, 8), (v, x) -> x ? colores[v] : "#3a3a44")
end

# ╔═╡ 3fae6361-a8a3-565e-bd3c-d5777f8f8989
md"""
Cada foco imita a su vecino, y eso funciona casi siempre. Pero si hay un accidente y queremos que el rojo se quede prendido, necesitamos una **mente maestra**: un vértice *controlador* con flechas hacia los tres focos. Su estado es una terna (rojo, amarillo, verde) y su regla es esta tabla:

| estado actual del controlador | siguiente estado |
|:--|:--|
| rojo | verde |
| verde | amarillo |
| amarillo | rojo |
| cualquier otra combinación | rojo |

Cada foco copia la entrada que le corresponde. Empezamos, como en el libro, con el controlador en *rojo* y los focos mostrando *amarillo*:
"""

# ╔═╡ 5c632507-59c0-55b3-a38e-bc0674b46355
let
    G = grafica(4, [1, 1, 1], [2, 3, 4]; nombres = ["controlador", "rojo", "amarillo", "verde"],
                pos = [(260, 60), (140, 210), (260, 210), (380, 210)])
    ROJO, AMARILLO, VERDE = (true, false, false), (false, true, false), (false, false, true)
    function regla(v, x, entradas)
        v == 1 || return entradas[1][v - 1]            # cada foco copia su componente
        x == ROJO ? VERDE : x == VERDE ? AMARILLO : ROJO   # «cualquier otra» ↦ rojo
    end
    x₀ = Any[ROJO, false, true, false]
    colores = ["#d62828", "#f2c14e", "#2b9348"]
    pinta(v, x) = v == 1 ? colores[findfirst(collect(x))] : (x ? colores[v - 1] : "#3a3a44")
    animar_focos(G, simular_en_grafica(G, x₀, regla, 9), pinta)
end

# ╔═╡ 5536c4eb-973b-5c7a-936d-8e24aea2d9c0
md"""
El vértice de arriba muestra la orden que el controlador manda en cada paso; los focos la ejecutan un paso después. La secuencia es la de un semáforo mexicano: verde, amarillo, rojo, verde…

!!! clave "Idea clave"
    Vértices distintos pueden tener reglas distintas (por eso la regla recibe `v`), y hay que elegir con cuidado el estado inicial para que el comportamiento tenga sentido.

## 2.4 Kiki y Bouba

Hasta ahora cada vértice usaba **o** su propio estado (el foco que parpadea) **o** el que le llegaba (los focos que copian). Kiki y Bouba usarán **ambos**. Además, su estado no es prendido o apagado sino un **número real**: su ánimo, de ``-5`` (muy gruñón) a ``+5`` (eufórico). Eso nos lleva a sistemas **continuos**.

!!! definicion "Definición 2.2 (Sistema dinámico continuo sobre una gráfica)"
    Igual que la Definición 2.1, pero con estados ``x_v \in \mathbb{R}`` que cambian continuamente según una ecuación diferencial
    ```math
    \dot x_v = F_v\big(x_v,\ (x_{\operatorname{src}(a)})_{a \in \operatorname{in}(v)}\big).
    ```
    Para simularla en la computadora usamos el **método de Euler** con un paso pequeño ``h``: ``x_v(t + h) \approx x_v(t) + h\,F_v(\dots)``. Es un sistema discreto como los de los focos.
"""

# ╔═╡ 638a62d4-04be-5660-8015-acae7b8acd2e
"Definición 2.2 con el método de Euler: x(t + h) = x(t) + h·F(v, x, entradas)."
function simular_continuo(G, x₀::Vector{Float64}, F, h::Float64, pasos::Int)
    paso_euler(v, x, entradas) = x + h * F(v, x, entradas)
    simular_en_grafica(G, x₀, paso_euler, pasos)
end;

# ╔═╡ db73dc8c-e0d3-5da3-a364-c2e23a8f3c35
md"""
### Kiki y Bouba por su cuenta

Solos, cada uno se **calma** hacia el ánimo neutro a su propio ritmo: ``\dot x = -c\,x``, donde la **tasa de calma** ``c`` es un *parámetro* (``c = 0.05`` para Kiki y ``0.03`` para Bouba). La gráfica tiene dos vértices y ninguna flecha. Kiki empieza en ``4.5`` y Bouba en ``-4.5``:
"""

# ╔═╡ 4c84594e-c3e9-5a47-b6f7-3fd83babcf89
let
    solos = grafica(2, Int[], Int[]; nombres = ["Kiki", "Bouba"])
    calma = [0.05, 0.03]
    F(v, x, entradas) = -calma[v] * x                 # ẋ = −c x
    h = 0.1
    H = simular_continuo(solos, [4.5, -4.5], F, h, 1000)
    grafica_animada(0:h:100, [getindex.(H, 1), getindex.(H, 2)], ["Kiki", "Bouba"], ["#c2185b", "#1d4f91"];
        ylims = (-5, 5), ejey = "ánimo", titulo = "Kiki y Bouba, cada quien por su lado (100 minutos)")
end

# ╔═╡ 1238dd90-af2d-5e5e-acce-baa50ebbb553
md"""
!!! pausa "Para pensar"
    El libro dice: *los ánimos nunca llegan a cero.* ¿Por qué?

!!! teorema "Proposición 2.3"
    Si ``\dot x = -c\,x`` con ``c > 0`` y ``x(0) = x_0 \neq 0``, entonces ``x(t) \neq 0`` para todo ``t \ge 0``. Lo mismo pasa con la simulación de Euler si ``0 < h c < 1``.

!!! demostracion "Demostración"
    La solución es ``x(t) = x_0 e^{-ct}``, y la exponencial nunca se anula. Con Euler, ``x_{n+1} = x_n + h(-c\,x_n) = (1 - hc)\,x_n``, así que ``x_n = (1 - hc)^n x_0``, que no se anula porque ``0 < 1 - hc < 1``. Ambas se acercan a ``0`` tanto como queramos, pero nunca lo alcanzan.

### Kiki y Bouba platican

Se encuentran a cenar. Ahora hay una flecha de Kiki a Bouba y otra de Bouba a Kiki: el ánimo de cada uno entra al sistema del otro. Las reglas del libro:

- en cada instante, cada uno absorbe una fracción del ánimo del otro, según su **susceptibilidad** ``s``;
- si alguno llega a su **tolerancia** de euforia ``e`` o de mal humor ``g``, deja de escuchar al otro para calmarse.

```math
\dot k = \begin{cases} -c\,k & \text{si } k \le g \text{ o } k \ge e,\\[2pt] s\,b - c\,k & \text{en otro caso,} \end{cases}
```

y lo mismo para Bouba, con sus propios parámetros (``s = 0.2,\ 0.1``; ``c = 0.05,\ 0.03``; ``g = -4,\ -4.8``; ``e = 4.5,\ 4``).

**susceptibilidad de Kiki** ``s_K`` = $(@bind susc_kiki deslizador(0.0:0.02:0.4, default = 0.2))

**ánimo inicial de Kiki** ``k(0)`` = $(@bind animo_kiki deslizador(-5.0:0.5:5.0, default = 4.5))
"""

# ╔═╡ 471bae22-36fd-5522-a275-a87c53419926
begin
    kb = grafica(2, [1, 2], [2, 1]; nombres = ["Kiki", "Bouba"])
    "Parámetros del libro: (susceptibilidad, calma, tolerancia gruñona, tolerancia eufórica)."
    parametros_kb(sK) = (s = [sK, 0.1], c = [0.05, 0.03], g = [-4.0, -4.8], e = [4.5, 4.0])
    function ánimo_kb(p)
        (v, x, entradas) -> (x <= p.g[v] || x >= p.e[v]) ? -p.c[v] * x : p.s[v] * entradas[1] - p.c[v] * x
    end
end;

# ╔═╡ 1bde0fc1-1451-51b5-9713-92c95c25e26b
let
    h = 0.1
    H = simular_continuo(kb, [Float64(animo_kiki), -2.8], ánimo_kb(parametros_kb(susc_kiki)), h, 1000)
    grafica_animada(0:h:100, [getindex.(H, 1), getindex.(H, 2)], ["Kiki", "Bouba"], ["#c2185b", "#1d4f91"];
        ylims = (-5, 5), ejey = "ánimo", titulo = "Kiki y Bouba platicando (100 minutos)")
end

# ╔═╡ 39a777b6-f913-538d-9ecf-75b4c70fafc4
md"""
El libro estudia tres casos. Julia los recalcula (estado final después de 100 minutos):
"""

# ╔═╡ 36633a37-7852-53ab-b6d3-37c4798f40ea
let
    filas = map([(4.5, 0.2), (3.5, 0.2), (3.5, 0.02)]) do caso
        k0, sK = caso
        H = simular_continuo(kb, [k0, -2.8], ánimo_kb(parametros_kb(sK)), 0.1, 1000)
        k, b = H[end]
        "| ``$k0`` | ``$sK`` | ``$(round(k; digits = 2))`` | ``$(round(b; digits = 2))`` | $(k > 0 && b > 0 ? "felices" : "de mal humor") |"
    end
    Markdown.parse("| ánimo inicial de Kiki | susceptibilidad de Kiki | Kiki al final | Bouba al final | terminan |\n|:--:|:--:|:--:|:--:|:--|\n" * join(filas, "\n"))
end

# ╔═╡ cc875300-7243-5822-8e50-bdcf019322a9
md"""
Con Kiki un poco menos emocionada (``3.5``) los dos terminan de mal humor; bajar la susceptibilidad de Kiki de ``0.2`` a ``0.02`` lo arregla. Busca con el deslizador **todos** los valores que funcionan cuando Kiki empieza en ``3.5``.

!!! margen "Detalle del libro"
    En el código del libro, el tercer caso conserva por error la susceptibilidad ``0.2``; el valor que describe el texto, ``0.02``, es el que produce la gráfica feliz.

### El chef Bouba y su equipo

Bouba es chef y tiene un equipo de cocina. El ánimo de Bouba afecta a su equipo, pero el equipo no le contesta al jefe: se reparte el ánimo entre sus miembros (un **lazo**). Además, el equipo no muestra todo lo que siente, solo el 60 %.
"""

# ╔═╡ a273256e-27fa-5283-96bc-bf7d5da43daf
let
    G = grafica(3, [1, 2, 2, 3], [2, 1, 3, 3]; nombres = ["Kiki", "Bouba", "equipo"], pos = [(110, 150), (260, 150), (410, 150)])
    p = parametros_kb(0.2)
    ánimo = ánimo_kb(p)
    # El equipo sigue la regla de Bouba (así está en el código del libro), con lo que le llega de Bouba
    F(v, x, entradas) = v == 3 ? ánimo(2, x, entradas[1:1]) : ánimo(v, x, entradas)
    h = 0.1
    H = simular_continuo(G, [4.5, -2.8, 0.5], F, h, 1000)
    lado_a_lado(dibujar(G; alto = 200),
        grafica_animada(0:h:100, [getindex.(H, 1), getindex.(H, 2), 0.6 .* getindex.(H, 3)], ["Kiki", "Bouba", "equipo (lo que muestra)"],
            ["#c2185b", "#1d4f91", "#2b6a4a"]; ylims = (-3, 5), ejey = "ánimo", titulo = "La vida de Bouba"))
end

# ╔═╡ ccbe80fc-aa76-58a2-a952-c8551fa1551b
md"""
!!! rigor "Rigor: el texto y el código no coinciden"
    El texto del libro le asigna al equipo parámetros propios (susceptibilidad ``0.5``, calma ``0.01``, tolerancia ``-3.5``), pero el código que produce su gráfica usa para el equipo **la regla y los parámetros de Bouba**, y grafica el 60 % del ánimo. Arriba reproducimos el código, que es lo que se ve en el libro. ¿Y con los parámetros del texto? Como el equipo no tiene tolerancia de euforia, nada lo frena: ``\dot w = 0.5\,b - 0.01\,(0.6\,w)`` con ``b \approx 4`` tiende al equilibrio ``w^* = 0.5 \cdot 4 / 0.006 \approx 333``, muy lejos de la escala ``[-5, 5]``. Un modelo necesita sus tolerancias.

## 2.5 Resumen

!!! resumen "Resumen del capítulo 2"
    Dimos vida a las gráficas agregando a cada vértice un conjunto de **estados** y una **regla de actualización**; las flechas transportan información (Definiciones 2.1 y 2.2). Simulamos sistemas **discretos** (focos y semáforos) y **continuos** (ánimos, con el método de Euler). El comportamiento depende de las reglas y del estado inicial. Esta es la visión de **causa y efecto**; en los capítulos siguientes desarrollaremos la visión **relacional**, que pone el acento en restricciones que se cumplen a la vez y no en procedimientos paso a paso.
"""

# ╔═╡ c3a29bb2-1f2e-5c77-88f7-0b87df52356d
capitulo(3, "Planos (I)";
    libro = "Sigue el capítulo 3 del libro (*Blueprints, Part I*).",
    metas = ["esconder los detalles de un mapa en una **flecha gorda**;",
             "definir **esquema** e **instancia** con precisión;",
             "ver que una gráfica dirigida es exactamente una instancia del esquema de gráficas."])

# ╔═╡ b77f53ad-17f8-5c3d-a222-9279517947bd
md"""
## 3.1 Introducción

Las gráficas dirigidas no siempre son la mejor opción. Para modelar TikTok sirven perfecto: los vértices son personas y una flecha va de quien sigue a quien es seguido; seguir es *direccional*, porque alguien puede no seguirte de vuelta. Pero en LinkedIn una conexión es **mutua**: necesitamos otra clase de gráfica, sin dirección.
"""

# ╔═╡ 4e6ec6c1-cae5-5b92-a588-838936829998
lado_a_lado(
    figura(dibujar(grafica(3, [1, 2, 1], [2, 3, 3]; nombres = ["Ana", "Beto", "Caro"], pos = [(80, 170), (210, 60), (340, 170)]); ancho = 380, alto = 240), "3.1", "TikTok: seguir es direccional."),
    figura(dibujar(simetrica(3, [(1, 2), (2, 3)]; nombres = ["Ana", "Beto", "Caro"], pos = [(80, 170), (210, 60), (340, 170)]); ancho = 380, alto = 240), "3.2", "LinkedIn: una conexión es mutua."))

# ╔═╡ 569798f4-07cb-5d1c-b9f4-a5d8776c777a
md"""
!!! pausa "Pausa para pensar"
    ¿Cómo representarías una gráfica **no dirigida** con mapas de origen y destino? (La respuesta llega en el capítulo 4.)

Las gráficas no dirigidas son solo un ejemplar de un zoológico entero de *clases* de gráficas. En este capítulo y el siguiente desarrollaremos una manera flexible de describirlas todas a la computadora.

## 3.2 Planos

### Flechas gordas

Empecemos ordenando la casa. Nuestro ladrillo básico es el **mapa**: un manojo de conexiones donde cada elemento de un lado se une con un elemento del otro. Los mapas se ven *cargados*, así que vamos a simplificar: envolvemos todas las conexiones en un tubo, le ponemos una punta para recordar la dirección, envolvemos los elementos de cada extremo en una esfera con nombre… y **olvidamos los detalles**.
"""

# ╔═╡ 9774c711-019d-5ae5-aa7c-d7f19f380fe0
figura(flecha_gorda_animada(romance, :src), "3.3", "El mapa de origen del romance se envuelve en una sola **flecha gorda** `src : A → V`.")

# ╔═╡ 135e00c9-93f4-5a49-a547-6877f1d989fe
md"""
Una flecha gorda es fácil de dibujar y de pensar: cada vez que vemos una, sabemos que debajo hay un conjunto concreto de conexiones. Es como la ``x`` del álgebra: un lugar reservado para un número. **Las flechas gordas son las variables de los mapas.**

### Gráficas dirigidas con flechas gordas

Una gráfica dirigida son *dos* mapas entre los mismos conjuntos de flechas y de vértices. Si los ponemos en paralelo y los envolvemos, obtenemos el **plano de todas las gráficas dirigidas**: un formulario por llenar, como uno que pide *nombre* y *apellido*. En el lenguaje del pensamiento relacional, a los planos se les llama **esquemas**.

!!! definicion "Definición 3.1 (Esquema)"
    Un **esquema** ``\mathcal{C}`` consta de un conjunto finito de **objetos**, un conjunto finito de **flechas generadoras** ``f \colon c \to d`` entre objetos y un conjunto finito de **ecuaciones** ``p = q`` entre **caminos** con el mismo inicio y el mismo final. Un camino ``f_1 \mathbin{⨟} f_2 \mathbin{⨟} \cdots \mathbin{⨟} f_k`` encadena flechas con ``\operatorname{cod}(f_i) = \operatorname{dom}(f_{i+1})``; el camino vacío en ``c`` se escribe ``\mathrm{id}_c``.

En Julia, un esquema es literalmente esa lista de datos. El de las gráficas dirigidas tiene dos objetos, dos flechas y ninguna ecuación (las ecuaciones aparecen en el capítulo 4):
"""

# ╔═╡ 0ddb5b22-b14f-5f2a-9da7-b1765640788d
begin
    "Una flecha generadora del esquema, `nombre : dom → cod` (una «flecha gorda»)."
    struct Flecha
        nombre::Symbol
        dom::Symbol
        cod::Symbol
    end

    "Una ecuación entre dos caminos que salen del mismo `objeto` (se leen en orden diagramático)."
    struct Ecuacion
        objeto::Symbol
        izq::Vector{Symbol}
        der::Vector{Symbol}
    end

    "Un esquema (Definición 3.1): objetos, flechas generadoras y ecuaciones."
    struct Esquema
        nombre::String
        objetos::Vector{Symbol}
        flechas::Vector{Flecha}
        ecuaciones::Vector{Ecuacion}
    end

    "Escribe un camino como texto: `refl ⨟ src`, o `id_V` si es el camino vacío."
    texto_camino(c::Vector{Symbol}, o::Symbol) = isempty(c) ? "id_$o" : join(string.(c), " ⨟ ")

    # El plano de TODAS las gráficas dirigidas: dos objetos y dos flechas, sin ecuaciones.
    GRAFICA = Esquema("gráficas dirigidas", [:A, :V],
        [Flecha(:src, :A, :V), Flecha(:tgt, :A, :V)], Ecuacion[])
end

# ╔═╡ 547da3ed-d12f-5c24-9441-398dd2337ce2
md"""
Llenar el formulario es dar una **instancia**:

!!! definicion "Definición 3.2 (Instancia)"
    Una **instancia** ``X`` de un esquema ``\mathcal{C}`` asigna a cada objeto ``c`` un conjunto finito ``X(c)`` y a cada flecha generadora ``f \colon c \to d`` una **función** ``X(f) \colon X(c) \to X(d)``, de modo que se cumple cada ecuación: si ``p = q`` es una ecuación entre caminos que salen de ``c``, entonces ``X(p)(x) = X(q)(x)`` para todo ``x \in X(c)``, donde
    ```math
    X(f_1 \mathbin{⨟} \cdots \mathbin{⨟} f_k) = X(f_k) \circ \cdots \circ X(f_1), \qquad X(\mathrm{id}_c) = \mathrm{id}_{X(c)}.
    ```

!!! margen "Otros nombres"
    A una instancia también se le llama *𝒞-conjunto* (*C-set*). En el capítulo 5 veremos que es lo mismo que un *funtor* ``\mathcal{C} \to \mathsf{Set}``.

!!! observacion "Observación 3.3"
    Una gráfica dirigida (Definición 1.1) es **exactamente** una instancia del esquema `GRAFICA`: ``X(A)`` son las flechas, ``X(V)`` los vértices, ``X(\operatorname{src})`` y ``X(\operatorname{tgt})`` los mapas. Como `GRAFICA` no tiene ecuaciones, no hay nada más que pedir.

El código de la Definición 3.2 revisa justamente esas dos cosas: que cada ``X(f)`` sea una función y que se cumplan las ecuaciones.
"""

# ╔═╡ fd41011e-76d0-570d-ae45-c4c8c2e8ebb6
begin
    """
    Una instancia de un esquema (Definición 3.2): el conjunto {1,…,n} para cada objeto
    y una función (un vector de enteros) para cada flecha. `pos` y `nombres` solo dibujan.
    """
    struct Instancia
        esquema::Esquema
        tam::Dict{Symbol,Int}             # c ↦ |X(c)|
        fun::Dict{Symbol,Vector{Int}}     # f ↦ X(f) como vector
        pos::Vector{Tuple{Float64,Float64}}
        nombres::Vector{String}
    end

    function instancia(S::Esquema; pos = Tuple{Float64,Float64}[], nombres = String[], datos...)
        tam = Dict{Symbol,Int}(o => Int(datos[o]) for o in S.objetos)
        fun = Dict{Symbol,Vector{Int}}(f.nombre => collect(Int, datos[f.nombre]) for f in S.flechas)
        Instancia(S, tam, fun, [(Float64(p[1]), Float64(p[2])) for p in pos], collect(String, nombres))
    end

    "Sigue un camino de flechas (en orden diagramático) a partir del elemento `i`."
    aplicar(X::Instancia, camino::Vector{Symbol}, i::Int) = foldl((x, f) -> X.fun[f][x], camino; init = i)

    "Todo lo que impide que `X` sea una instancia de su esquema (vacío = es una instancia)."
    function errores(X::Instancia)
        S, malos = X.esquema, String[]
        for f in S.flechas                          # 1. cada X(f) es una FUNCIÓN X(dom) → X(cod)
            v = X.fun[f.nombre]
            length(v) == X.tam[f.dom] ||
                push!(malos, "`$(f.nombre)` debe tener $(X.tam[f.dom]) valores (uno por elemento de $(f.dom)) y tiene $(length(v)).")
            for (x, y) in enumerate(v)
                1 <= y <= X.tam[f.cod] ||
                    push!(malos, "`$(f.nombre)($x) = $y` no existe: $(f.cod) solo tiene $(X.tam[f.cod]) elementos (¡flecha colgante!).")
            end
        end
        isempty(malos) || return malos
        for e in S.ecuaciones, i in 1:X.tam[e.objeto]   # 2. se cumplen las ecuaciones (cap. 4)
            a, b = aplicar(X, e.izq, i), aplicar(X, e.der, i)
            a == b || push!(malos, "La ecuación `$(texto_camino(e.izq, e.objeto)) = $(texto_camino(e.der, e.objeto))` falla en el elemento $i de $(e.objeto): un camino llega a $a y el otro a $b.")
        end
        malos
    end
    es_valida(X::Instancia) = isempty(errores(X))
end;

# ╔═╡ 8625f40e-6048-51da-85f6-2dd0c4e024dc
md"""
Cada manera de llenar el formulario es una gráfica. Aquí tienes tres instancias del mismo plano: el romance, la estrella del rompecabezas 1(b) y un ciclo.
"""

# ╔═╡ 673b2471-5ea4-59bd-b732-82c5b0d9cc03
lado_a_lado(dibujar(romance; ancho = 250, alto = 200), dibujar(grafica(7, [1, 1, 1, 1, 1, 1], [2, 3, 4, 5, 6, 7]); ancho = 250, alto = 200),
    dibujar(grafica(4, [1, 2, 3, 4], [2, 3, 4, 1]); ancho = 250, alto = 200))

# ╔═╡ f6d3a1f9-18de-5654-9ee5-f383fa959c9c
md"""
Algo curioso: el plano es, **él mismo**, una gráfica dirigida: dos vértices (``A`` y ``V``) y dos flechas (``\operatorname{src}`` y ``\operatorname{tgt}``). Así que podemos describírselo a la computadora con mapas de origen y destino, como en el capítulo 1:
"""

# ╔═╡ 1ff5c942-f94a-5bb3-b43a-680be3e72c58
"Las flechas generadoras de un esquema, vistas como una gráfica dirigida (los objetos son los vértices)."
function como_grafica(S::Esquema)
    i = Dict(o => k for (k, o) in enumerate(S.objetos))
    grafica(length(S.objetos), [i[f.dom] for f in S.flechas], [i[f.cod] for f in S.flechas];
        nombres = string.(S.objetos), pos = [(150.0 + 220(k - 1), 120.0) for k in eachindex(S.objetos)])
end;

# ╔═╡ cbfa349d-31e8-5d6a-8fa6-ea4469f0750d
como_grafica(GRAFICA)

# ╔═╡ 339e6c59-7db1-52cf-8736-4484d74e7256
plegable("Así se escribe en AlgebraicJulia", md"""
```julia
@present SchGraph(FreeSchema) begin
    V::Ob
    A::Ob
    src::Hom(A, V)
    tgt::Hom(A, V)
end
```
`Ob` declara objetos y `Hom(A, V)` una flecha gorda de `A` a `V`.
""")

# ╔═╡ 945abfb2-776d-5b21-85b1-77b794b3fa51
md"""
## 3.3 Resumen

!!! resumen "Resumen del capítulo 3"
    Abstrajimos la información de una gráfica y obtuvimos el **esquema de todas las gráficas dirigidas** (Definición 3.1); cada gráfica es una **instancia** suya (Definición 3.2 y Observación 3.3). En el capítulo 4 *agregaremos* cosas a este esquema para describir otras clases de gráficas y objetos matemáticos más allá de las gráficas.
"""

# ╔═╡ bcb5858a-cd31-5607-9b54-0a0ac7884b75
capitulo(4, "Planos (II)";
    libro = "Sigue el capítulo 4 del libro (*Blueprints, Part II*).",
    metas = ["escribir **ecuaciones entre caminos** (condiciones de conmutatividad);",
             "construir los esquemas de gráficas **reflexivas** y **no dirigidas**;",
             "reconocer otros esquemas: conjuntos simpliciales, redes de Petri y bases de datos."])

# ╔═╡ 96193dd8-a6cd-5500-93f3-7ef94e4718af
md"""
## 4.1 Introducción

Seguimos construyendo planos. Ahora iremos más allá de las gráficas dirigidas, con planos que se construyen **sobre** el suyo.

## 4.2 Gráficas reflexivas (en teoría)

Hagamos una gráfica del **gato** (*tic-tac-toe*): los vértices son posiciones del juego y las flechas son jugadas. Ahora hagamos lo mismo con el juego oriental **Go**, donde un jugador siempre puede **pasar**, es decir, quedarse en la misma posición. Entonces **cada vértice tiene una flecha especial que regresa a sí mismo**.

Esto pasa tanto al modelar que estas gráficas tienen nombre: **gráficas reflexivas**. Son comunes en matemáticas (la divisibilidad entre enteros, la inclusión entre conjuntos) y, dice el libro, en teoría de categorías todas las estructuras de interés son gráficas reflexivas. Dicho con precisión: todo preorden y toda categoría tienen una gráfica reflexiva **subyacente**, cuyos lazos especiales son las identidades.

!!! pausa "Pausa para pensar"
    ¿En qué se distinguen los datos de una gráfica reflexiva de los de una gráfica dirigida? ¿Cómo se los comunicarías a la computadora?

La respuesta del libro: con un **mapa de vértices a flechas**, ``\operatorname{refl} \colon V \to A``, que a cada vértice le asigna su lazo especial. Sigue con la vista los caminos de la figura:
"""

# ╔═╡ 0ed3307a-9d3b-5e74-9587-b53788998b0b
figura(lazo_cerrado_animado(reflexiva(3, [1, 2], [2, 3])), "4.1",
    "Una gráfica reflexiva de 3 vértices: dos flechas ordinarias (1 y 2) y los lazos especiales 3, 4 y 5. Empieza en un vértice, sigue `refl` hasta su lazo y luego `src` hasta su origen: **siempre regresas a donde empezaste**.")

# ╔═╡ 3bfa6837-b75d-539b-a993-00017442777c
md"""
### El sistema de escritura

Para decirle esto a la computadora necesitamos escribir caminos. El libro usa un punto y coma; nosotros usaremos el símbolo ``\mathbin{⨟}``, que se lee igual:

- ``f \mathbin{⨟} g`` significa «primero ``f``, después ``g``»;
- ``=`` iguala los extremos de dos caminos;
- ``\mathrm{id}`` significa «quedarse donde estás» (el mapa identidad).

!!! definicion "Definición 4.1 (Composición)"
    Si ``f \colon X \to Y`` y ``g \colon Y \to Z`` son funciones, su **composición** es ``f \mathbin{⨟} g \colon X \to Z``, ``(f \mathbin{⨟} g)(x) = g(f(x))``. Es la misma función que en los libros se escribe ``g \circ f``. La **identidad** ``\mathrm{id}_X`` manda cada ``x`` a sí mismo.

!!! margen "Notación"
    La notación ``f \mathbin{⨟} g`` (orden diagramático) es la de AlgebraicJulia y la del libro; la mayoría de los libros en español usa ``g \circ f``. Dicen lo mismo.

Con funciones guardadas como vectores, componer es ¡**indexar**! El vector `g[f]` tiene en la posición ``x`` el valor `g[f[x]]`:
"""

# ╔═╡ 57dd95aa-0484-5a37-9542-d87c1b3fc1d1
let
    f = [2, 3, 3]          # f : {1,2,3} → {1,2,3}
    g = [1, 1, 2]          # g : {1,2,3} → {1,2}
    id = collect(1:3)
    (; f_luego_g = g[f], id_luego_f = f[id], f_luego_id = id[f])
end

# ╔═╡ 5f34d7d1-952b-5e5c-b9ab-61ec8ea1ea35
md"""
La composición de funciones es **asociativa**: ``((f \mathbin{⨟} g) \mathbin{⨟} h)(x) = h(g(f(x))) = (f \mathbin{⨟} (g \mathbin{⨟} h))(x)``, y la identidad es neutra. Con este lenguaje, la observación de la figura 4.1 se escribe como dos **ecuaciones entre caminos**, que el libro llama **condiciones de conmutatividad**:

```math
\operatorname{refl} \mathbin{⨟} \operatorname{src} = \mathrm{id}_V, \qquad \operatorname{refl} \mathbin{⨟} \operatorname{tgt} = \mathrm{id}_V.
```

!!! teorema "Proposición 4.2 (Lazos cerrados ⇔ lazos en cada vértice)"
    Sean ``\operatorname{src}, \operatorname{tgt} \colon A \to V`` y ``\operatorname{refl} \colon V \to A``. Las dos ecuaciones anteriores se cumplen **si y solo si** para cada vértice ``v`` la flecha ``\operatorname{refl}(v)`` es un lazo en ``v``. En particular, cada vértice tiene al menos un lazo.

!!! demostracion "Demostración"
    Las ecuaciones dicen, elemento por elemento, que ``\operatorname{src}(\operatorname{refl}(v)) = v`` y ``\operatorname{tgt}(\operatorname{refl}(v)) = v`` para todo ``v``: la flecha ``\operatorname{refl}(v)`` sale de ``v`` y llega a ``v``, es decir, es un lazo en ``v``. Recíprocamente, si cada ``\operatorname{refl}(v)`` es un lazo en ``v``, las dos igualdades se cumplen en cada ``v``. Puede haber otros lazos además de ``\operatorname{refl}(v)``: la proposición solo garantiza uno.

Lo que antes decíamos con palabras («cada vértice tiene un lazo especial») ahora está dicho con **mapas y caminos cerrados**, que es justo lo que la computadora entiende. Las ecuaciones forman parte del esquema:
"""

# ╔═╡ 92c458c2-e82b-57e3-83f8-58abcd701b64
begin
    # refl ⨟ src = id_V  y  refl ⨟ tgt = id_V
    REFLEXIVA = Esquema("gráficas reflexivas", [:A, :V],
        [Flecha(:src, :A, :V), Flecha(:tgt, :A, :V), Flecha(:refl, :V, :A)],
        [Ecuacion(:V, [:refl, :src], Symbol[]), Ecuacion(:V, [:refl, :tgt], Symbol[])])

    # inv ⨟ tgt = src,  inv ⨟ src = tgt  e  inv ⨟ inv = id_A
    SIMETRICA = Esquema("gráficas simétricas", [:A, :V],
        [Flecha(:src, :A, :V), Flecha(:tgt, :A, :V), Flecha(:inv, :A, :A)],
        [Ecuacion(:A, [:inv, :tgt], [:src]), Ecuacion(:A, [:inv, :src], [:tgt]), Ecuacion(:A, [:inv, :inv], Symbol[])])
end;

# ╔═╡ 4d9739c7-234f-5f8f-ace1-5f40807ddeea
REFLEXIVA

# ╔═╡ af9092a3-abe9-5fff-b9fb-df3e566431b5
md"""
### Gráficas reflexivas (en la computadora)

Una gráfica reflexiva válida y otra en la que alguien se equivocó al escribir `refl`:
"""

# ╔═╡ 78c0814f-9a25-5a91-9a4b-feab632795ea
reflexiva(2, [1], [2])        # una flecha 1 → 2 y un lazo especial en cada vértice

# ╔═╡ 9e580ac2-fc9d-554a-b288-7527de526ad0
instancia(REFLEXIVA; V = 2, A = 3, src = [1, 1, 2], tgt = [2, 1, 2], refl = [1, 3])

# ╔═╡ 2b69126b-57e5-50cd-b0e5-f982e285bdda
md"""
La segunda falla porque ``\operatorname{refl}(1) = 1`` es la flecha ``1 \to 2``, que **no** es un lazo: el camino ``\operatorname{refl} \mathbin{⨟} \operatorname{tgt}`` que sale del vértice 1 llega al 2. Julia encontró la ecuación rota y el elemento exacto.

!!! ejercicio "Ejercicio 4.1"
    Una gráfica reflexiva tiene tres vértices, las flechas ``1: 1 \to 2`` y ``2: 2 \to 3``, y tres lazos: las flechas 3, 4 y 5. Escribe el vector `refl` para que la instancia sea válida.
"""

# ╔═╡ 7680cd5f-b9b4-55f2-8d78-9e539841c742
ej41_refl = missing

# ╔═╡ ecd1ad03-d252-5b50-aed2-e67d1054dfff
if ismissing(ej41_refl)
    pendiente()
else
    let X = instancia(REFLEXIVA; V = 3, A = 5, src = [1, 2, 1, 2, 3], tgt = [2, 3, 1, 2, 3], refl = ej41_refl)
        es_valida(X) ? correcto("Cada vértice apunta a su propio lazo: las dos ecuaciones se cumplen.") : incorrecto(join(errores(X), " "))
    end
end

# ╔═╡ 32ab4ce0-ccce-5ed3-b886-f3fb3c67ed0f
plegable("Pista", md"El lazo del vértice 1 es la flecha que va de 1 a 1. ¿Cuál es? Mira `src = [1, 2, 1, 2, 3]` y `tgt = [2, 3, 1, 2, 3]`.")

# ╔═╡ 67b930ef-355c-5a30-bde8-6dff41bbc305
plegable("Así se escribe en AlgebraicJulia", md"""
```julia
@present SchReflexiveGraph <: SchGraph begin
    refl::Hom(V, A)
    compose(refl, src) == id(V)
    compose(refl, tgt) == id(V)
end
```
`<:` dice que el nuevo plano se construye **sobre** el de las gráficas; `compose(refl, src)` es `refl ⨟ src`.
""")

# ╔═╡ 1d905863-84a1-58eb-bf94-36e698e1fc48
md"""
## 4.3 Gráficas no dirigidas

¿Hay un plano para las gráficas no dirigidas? Sorprendentemente, podemos verlas como **casos especiales** de gráficas dirigidas. Una flecha es una calle de un solo sentido; una arista no dirigida es una calle de **doble sentido**, que podemos imaginar como **dos flechas opuestas**. Basta pedir que cada flecha tenga una **pareja** única: un mapa ``\operatorname{inv} \colon A \to A``.

!!! pausa "Comparando dos caminos"
    *Camino 1:* empieza en una flecha y ve a su origen. *Camino 2:* empieza en la misma flecha, ve a su pareja con ``\operatorname{inv}`` y luego al destino de la pareja. Los dos caminos deben llegar al mismo vértice.

Así, las parejas apuntan en sentidos contrarios, y para que las parejas sean **de dos** (y no tríos o cuartetos que se pasan la estafeta) cada flecha debe ser la pareja de su pareja:

```math
\operatorname{inv} \mathbin{⨟} \operatorname{tgt} = \operatorname{src}, \qquad \operatorname{inv} \mathbin{⨟} \operatorname{src} = \operatorname{tgt}, \qquad \operatorname{inv} \mathbin{⨟} \operatorname{inv} = \mathrm{id}_A.
```

El esquema `SIMETRICA` ya lo escribimos en la celda de `NUC_PLANOS`; aquí está dibujado:
"""

# ╔═╡ c8a8f115-c283-5b78-ab7a-31c7fffd7261
SIMETRICA

# ╔═╡ f4fb16d3-8cfe-56b6-988e-64ff8326743d
amistades = simetrica(4, [(1, 2), (2, 3), (3, 1), (3, 4)];
    nombres = ["Ana", "Beto", "Caro", "Dani"], pos = [(120, 80), (120, 210), (260, 145), (410, 145)])

# ╔═╡ db86057a-70fb-5e4a-ab53-781d9384953e
md"""
Cada arista se guarda como dos flechas, una inversa de la otra; en el dibujo las pintamos como una sola línea sin punta. A cada pareja de flechas inversas la llamamos **arista**.

!!! observacion "Observación 4.3"
    El libro llama *gráficas no dirigidas* a estas instancias; su nombre técnico es **gráficas simétricas**. La diferencia es sutil: un lazo puede venir en pareja o ser su propio inverso (``\operatorname{inv}(a) = a``), cosa que una gráfica no dirigida «de libro de texto» no distingue. Para todo lo que haremos, la diferencia no importa.

!!! pausa "Pausa para pensar"
    Para ti, `amistades` son personas que se conocen y una arista es una amistad. Para la computadora solo hay conjuntos, funciones y ecuaciones: **no tiene idea de lo que significan**. El significado vive en tu cabeza; la estructura, en el plano. Esa separación es la que permitirá automatizar todo lo que sigue.

## 4.4 Otros esquemas

Los esquemas sirven para mucho más que gráficas. El libro solo los menciona de pasada; aquí los escribimos y Julia los revisa.

### Conjuntos simpliciales

Las gráficas pegan vértices (dimensión 0) con aristas (dimensión 1). Agregando **triángulos** (dimensión 2), tetraedros (dimensión 3), etcétera, se obtienen los *conjuntos simpliciales*, una herramienta favorita de la topología algebraica. (Rigurosamente, lo que escribimos abajo son conjuntos **semisimpliciales**: solo tienen mapas de cara; los simpliciales tienen además mapas de degeneración ``V \to A``, ``A \to T``, como el ``\operatorname{refl}`` de las gráficas reflexivas.) Un triángulo ``t`` tiene tres caras ``c_0(t), c_1(t), c_2(t)`` (la arista opuesta a cada vértice), y las **identidades simpliciales** dicen cómo se pegan:
"""

# ╔═╡ 2d210bda-1d29-5bd3-998f-6c2c5e0a9dab
begin
    # c₀, c₁, c₂ : T → A (caras de un triángulo) y src, tgt : A → V.
    # Identidades simpliciales: c₁⨟tgt = c₀⨟tgt,  c₂⨟tgt = c₀⨟src,  c₂⨟src = c₁⨟src
    SIMPLICIAL = Esquema("conjuntos semisimpliciales de dimensión 2", [:T, :A, :V],
        [Flecha(:c0, :T, :A), Flecha(:c1, :T, :A), Flecha(:c2, :T, :A), Flecha(:src, :A, :V), Flecha(:tgt, :A, :V)],
        [Ecuacion(:T, [:c1, :tgt], [:c0, :tgt]), Ecuacion(:T, [:c2, :tgt], [:c0, :src]), Ecuacion(:T, [:c2, :src], [:c1, :src])])
    # Un triángulo con vértices 1, 2, 3 y aristas 1→2, 2→3, 1→3
    triangulo_relleno = instancia(SIMPLICIAL; T = 1, A = 3, V = 3, c0 = [2], c1 = [3], c2 = [1],
        src = [1, 2, 1], tgt = [2, 3, 3], pos = [(150, 220), (260, 60), (370, 220)])
end

# ╔═╡ 7bd29d50-3129-5726-880c-d90b359b592a
lado_a_lado(SIMPLICIAL, triangulo_relleno)

# ╔═╡ 7d1e9067-7e8b-55b4-b14d-6ba48d3d0094
md"""
Si en `triangulo_relleno` cambias `c0 = [2]` por `c0 = [1]`, Julia te dirá qué identidad se rompe y en qué triángulo.

### Redes de Petri

Las *redes de Petri* (Carl Adam Petri, años sesenta) modelan procesos concurrentes, reacciones químicas y epidemias: hay **lugares** ``S``, **transiciones** ``T`` y arcos de entrada ``I`` y de salida ``O``. El libro subraya que nacieron de la práctica (Petri buscaba modelar procesos químicos y concurrentes) y no como teoría matemática; pero como tienen una definición exacta, caben en un esquema. Este es el modelo epidemiológico SIR: la infección toma un susceptible y un infectado y produce dos infectados; la recuperación toma un infectado y produce un recuperado.
"""

# ╔═╡ 18e42f55-7d12-532c-9746-ded6e0153d02
begin
    PETRI = Esquema("redes de Petri", [:S, :T, :I, :O],
        [Flecha(:is, :I, :S), Flecha(:it, :I, :T), Flecha(:os, :O, :S), Flecha(:ot, :O, :T)], Ecuacion[])
    # lugares: 1 = S, 2 = I, 3 = R;  transiciones: 1 = infección, 2 = recuperación
    sir = instancia(PETRI; S = 3, T = 2, I = 3, O = 3, is = [1, 2, 2], it = [1, 1, 2], os = [2, 2, 3], ot = [1, 1, 2])
end

# ╔═╡ 03a32d68-781d-5027-8bd0-66db3067a4a5
lado_a_lado(PETRI, sir)

# ╔═╡ ce8660ad-b03c-59df-9f87-38ee9e6d7aee
md"""
### Bases de datos

La palabra *esquema* viene de las bases de datos. Un objeto es una tabla, y una flecha es una columna que apunta a otra tabla. La tabla *Ama* del romance tiene dos columnas, `amante` y `amado`, que apuntan a la tabla *Persona*: ¡es exactamente una gráfica dirigida con otros nombres!

| *Ama* | `amante` | `amado` |
|:--:|:--:|:--:|
| 1 | Afrodita | Adonis |
| 2 | Adonis | Afrodita |
| 3 | Adonis | Narciso |
| 4 | Narciso | Narciso |

Cuando los datos pasan de un contexto a otro se corrompen con facilidad: es el análogo de las flechas colgantes en las bases de datos. Así como el pensamiento relacional nos librará de las flechas colgantes, la *migración funtorial de datos* (Spivak, 2012) traslada datos de manera canónica sin esos problemas.

## 4.5 Resumen

!!! resumen "Resumen del capítulo 4"
    Un esquema es una estructura de datos versátil: objetos, flechas y **ecuaciones entre caminos**. Construimos sobre el esquema de las gráficas los de gráficas **reflexivas** (Proposición 4.2) y **no dirigidas** (simétricas), y vimos que conjuntos simpliciales, redes de Petri y bases de datos también son instancias de esquemas. En el capítulo 5 usaremos esta idea para describir **relaciones entre gráficas**.
"""

# ╔═╡ 279fe285-6167-5f60-82bf-b705049f2553
capitulo(5, "Categorías";
    libro = "Sigue el capítulo 5 del libro. Las secciones marcadas al margen van más allá del libro.",
    metas = ["definir **inyección**, **morfismo** e **isomorfismo** de gráficas con cuadrados conmutativos;",
             "contar morfismos con Julia y **comprobar** las respuestas del libro;",
             "definir **categoría**, **funtor** y **transformación natural**, y verificar los axiomas."])

# ╔═╡ 5b6290fb-81db-52f7-a111-e3dc672b7dec
md"""
## 5.1 Introducción

Hemos llegado a las orillas del pensamiento relacional. Cada esquema del capítulo anterior genera **infinitas** instancias. No podemos escribirlas todas, pero sí imaginar un **universo** donde todas flotan.
"""

# ╔═╡ 4b67f0dd-0eb8-536e-912c-914d3acdf283
figura(universo_animado(), "5.1", "El universo de las gráficas dirigidas. Al principio cada una flota sola; después aparecen las **relaciones** entre ellas.")

# ╔═╡ 2a8ab733-b7c6-5c37-8c46-b868d9d95b65
md"""
Un universo donde cada cosa existe aislada sería aburridísimo: la riqueza viene de las **conexiones**. Nuestra meta en este capítulo es *decir* qué significa que dos gráficas estén relacionadas. Cuando lo logremos, el universo tendrá objetos y relaciones, y eso, en el lenguaje del pensamiento relacional, es una **categoría**: el cuarto y último peldaño de la escalera.

## 5.2 Inyecciones de gráficas

En invierno, en el centro de esquí puedes subir y bajar en telesilla o bajar esquiando al pueblo. En **verano** no hay nieve: el telesilla te sube a ver la vista y te baja, pero no hay forma de llegar al pueblo.
"""

# ╔═╡ 2a01b175-f3fa-5098-b95a-6dfc47ed959d
verano = grafica(2, [1, 2], [2, 1]; nombres = ["Cabaña", "Cima"], pos = [(110, 210), (260, 80)])

# ╔═╡ 0000577d-e539-575c-92b8-bc6952baf521
md"""
!!! pausa "Para pensar"
    ¿Cómo se relacionan las gráficas de verano e invierno?

Una manera *procedimental* de pensarlo: al mapa de verano le **agregamos** el pueblo y sus flechas, o al de invierno le **quitamos** esas cosas. El pensamiento relacional propone otra mirada: el mapa de verano **vive dentro** del de invierno. Mandamos cada vértice de verano a un vértice de invierno y cada flecha a una flecha:
"""

# ╔═╡ 6c03fbe5-eed5-57f8-9a70-b626f271a25f
morfismo(verano, esqui; V = [1, 2], A = [1, 2])

# ╔═╡ aabea449-3d88-58f2-90a7-833b2eea998a
md"""
A esto le llamamos una **inyección de gráficas**. Las siluetas punteadas de la derecha son la gráfica que *recibe*; el resultado final, «qué fue a dónde», es la **imagen** de la primera gráfica en la segunda.

!!! cuidado "Precaución"
    Al inyectar una gráfica **no se vale despegarla**: cada flecha debe seguir unida a su origen y su destino. De lo contrario aparece una flecha colgante.

### Rompecabezas

!!! rompecabezas "Rompecabezas 1"
    ¿De cuántas maneras puedes inyectar el triángulo de la izquierda en el de la derecha? (Respuesta del libro: en **tres** orientaciones.)

!!! rompecabezas "Rompecabezas 2"
    ¿De cuántas maneras puedes inyectar el triángulo en la figura de la derecha? (Respuesta del libro: «¿Doce?», con signo de interrogación.)
"""

# ╔═╡ f768aa01-416d-5255-9a5e-9d9da2b24b15
lado_a_lado(
    figura(dibujar(triangulo_dirigido; ancho = 230, alto = 210), "5.2", "El triángulo dirigido."),
    figura(dibujar(trifuerza; ancho = 300, alto = 260), "5.3", "La figura receptora del rompecabezas 2: seis vértices y nueve flechas."))

# ╔═╡ 5f618c41-3c1a-5814-b6b5-8d0a12c29e60
begin
    triangulo_dirigido = grafica(3, [1, 2, 3], [2, 3, 1]; pos = [(260, 60), (160, 230), (360, 230)])
    # 1 arriba, 2 y 3 en medio, 4, 5 y 6 abajo (como en la figura del libro)
    trifuerza = grafica(6, [1, 2, 3, 2, 5, 3, 4, 5, 6], [2, 3, 1, 4, 2, 5, 5, 6, 3];
        pos = [(260, 40), (190, 150), (330, 150), (120, 260), (260, 260), (400, 260)])
    (; rompecabezas_1 = length(morfismos(triangulo_dirigido, triangulo_dirigido; inyectivo = true)),
       rompecabezas_2 = length(morfismos(triangulo_dirigido, trifuerza; inyectivo = true)))
end

# ╔═╡ c941cc0c-2605-51cc-8d7b-73f5606a74a2
md"""
!!! rigor "Rigor: «¿doce?» sí son doce"
    El libro deja la respuesta del rompecabezas 2 con signo de interrogación. La búsqueda exhaustiva lo confirma: **12**. La razón: la figura tiene **cuatro** triángulos dirigidos (los tres de las esquinas y el del centro, que también es un ciclo), y cada uno recibe al triángulo en **tres** rotaciones; ``4 \times 3 = 12``. Las reflexiones no cuentan, porque invertirían el sentido de las flechas.

!!! pausa "Pausa para pensar"
    ¿Qué estrategia usaste para contar? ¿Sistemática o de prueba y error? ¿Podrías diseñar un **algoritmo** que una computadora siga para resolver estos problemas? (Lo haremos en unos minutos.)

### Inyecciones como datos

Para la computadora, una inyección es un **par de mapas**: un *mapa de vértices* ``\alpha_V \colon V_X \to V_Y`` y un *mapa de flechas* ``\alpha_A \colon A_X \to A_Y``. ¿Qué condición deben cumplir para que la gráfica no se despegue? Acomoda los mapas en un cuadrado: los de origen en horizontal y los de ``\alpha`` en vertical.

```math
\begin{array}{ccc}
A_X & \xrightarrow{\ \operatorname{src}\ } & V_X \\[2pt]
{\scriptstyle \alpha_A}\big\downarrow & & \big\downarrow{\scriptstyle \alpha_V} \\[2pt]
A_Y & \xrightarrow{\ \operatorname{src}\ } & V_Y
\end{array}
```

Desde una flecha ``a`` arriba a la izquierda hay **dos rutas**. La *de arriba* lleva al «vértice que recibe el origen de ``a``», ``\alpha_V(\operatorname{src}(a))``. La *de abajo* lleva al «origen de la imagen de ``a``», ``\operatorname{src}(\alpha_A(a))``. Que la gráfica **se despegue** significa, literalmente, que esos dos vértices son distintos.
"""

# ╔═╡ 58f3efe4-5e31-5b74-ac65-b8f240ce2c77
figura(cuadrado_animado(morfismo(verano, esqui; V = [1, 2], A = [1, 2]), :src, 1), "5.4",
    "Las dos rutas desde la flecha 1 del verano llegan al mismo vértice del invierno: el cuadrado **conmuta**.")

# ╔═╡ 6abfbeb4-d71e-54f4-873a-cb5bd5ed4843
figura(cuadrado_animado(morfismo(verano, esqui; V = [1, 3], A = [1, 2]), :src, 2), "5.5",
    "Si mandamos la Cima al Pueblo pero dejamos sus flechas en su lugar, las rutas desde la flecha 2 no se encuentran: la flecha se despegó.")

# ╔═╡ 773b0325-9f9b-5c73-8454-809084d6f4a0
md"""
Así que podemos **definir** una inyección con una condición de lazo cerrado: desde cualquier flecha, las dos rutas alrededor del cuadrado deben cerrar. En el lenguaje del pensamiento relacional, las condiciones de lazo cerrado se llaman **condiciones de conmutatividad**, y un cuadrado donde las dos rutas coinciden **conmuta**.

!!! definicion "Definición 5.1 (Inyección de gráficas)"
    Una **inyección** de la gráfica ``X`` en la gráfica ``Y`` es un par de funciones **inyectivas** ``\alpha_V \colon V_X \to V_Y`` y ``\alpha_A \colon A_X \to A_Y`` tales que los cuadrados de origen y de destino conmutan:
    ```math
    \alpha_A \mathbin{⨟} \operatorname{src}_Y = \operatorname{src}_X \mathbin{⨟} \alpha_V, \qquad \alpha_A \mathbin{⨟} \operatorname{tgt}_Y = \operatorname{tgt}_X \mathbin{⨟} \alpha_V.
    ```

!!! margen "Para el especialista"
    En la categoría de gráficas (y en cualquier ``\mathcal{C}\text{-}\mathsf{Set}``) las inyecciones son exactamente los **monomorfismos**: los morfismos ``\alpha`` tales que ``\beta \mathbin{⨟} \alpha = \gamma \mathbin{⨟} \alpha`` implica ``\beta = \gamma``.

## 5.3 Morfismos de gráficas

En el capítulo 0, Paul y Toni se turnaban los platos hasta que llegó Tuco. Resulta que Paul y Toni son **diestros** y Tuco es **zurdo**. Hay otra gráfica que también describe la rutina, ahora en términos de la mano de quien lava: una versión de **grano grueso** (*coarse-graining*), con menos detalle.
"""

# ╔═╡ 5ea913ea-bc88-5a02-8e08-3bb5355acae9
manos = grafica(2, [1, 1, 2], [1, 2, 2]; nombres = ["Diestros", "Zurdos"], pos = [(150, 160), (380, 160)])

# ╔═╡ 18850d38-1dca-5b9f-9ff8-01b32d29ac58
morfismo(platos, manos; V = [1, 1, 2], A = [1, 1, 2, 3])

# ╔═╡ c3cc38da-6918-59ca-9396-9371b3f98130
md"""
Paul y Toni van a *Diestros*; sus dos flechas, al lazo de *Diestros*. No es una inyección (junta cosas), pero **conserva la conectividad**: aunque algunas flechas quedan encimadas, cada una sigue saliendo de su origen y llegando a su destino. Las condiciones de conmutatividad son exactamente lo que se necesita para que la gráfica no se rompa.

!!! definicion "Definición 5.2 (Morfismo de gráficas)"
    Un **morfismo** ``\alpha \colon X \to Y`` de gráficas es un par de funciones ``\alpha_V \colon V_X \to V_Y`` y ``\alpha_A \colon A_X \to A_Y`` (no necesariamente inyectivas) que hacen conmutar los cuadrados de origen y destino de la Definición 5.1.

!!! clave "Idea clave"
    Un morfismo de gráficas es una buena manera de **identificar una gráfica dentro de otra**: conserva la conectividad de la gráfica de salida (el *dominio*) y puede juntar información. Las inyecciones son el caso particular en que no se junta nada.

El mismo esquema de cuadrados sirve para **cualquier** esquema, no solo para gráficas: hay un cuadrado por cada flecha generadora.

!!! definicion "Definición 5.3 (Morfismo de instancias)"
    Sean ``X, Y`` instancias de un esquema ``\mathcal{C}``. Un **morfismo** ``\alpha \colon X \to Y`` es una familia de funciones ``\alpha_c \colon X(c) \to Y(c)``, una por objeto, tal que para **cada** flecha generadora ``f \colon c \to d`` el **cuadrado de naturalidad** conmuta:
    ```math
    X(f) \mathbin{⨟} \alpha_d = \alpha_c \mathbin{⨟} Y(f), \qquad\text{es decir,}\qquad \alpha_d\big(X(f)(x)\big) = Y(f)\big(\alpha_c(x)\big)\ \ \forall x \in X(c).
    ```

En Julia la definición se lee casi igual: por cada flecha `f` y cada elemento `x`, se comparan la ruta de arriba y la de abajo.
"""

# ╔═╡ eb6e48b0-1f08-5e8b-b3c1-58674df893e0
begin
    "Un morfismo de instancias (Definición 5.3): una función `comp[c] : X(c) → Y(c)` por objeto."
    struct Morfismo
        dom::Instancia
        cod::Instancia
        comp::Dict{Symbol,Vector{Int}}
    end
    morfismo(X::Instancia, Y::Instancia; comps...) =
        Morfismo(X, Y, Dict{Symbol,Vector{Int}}(o => collect(Int, comps[o]) for o in X.esquema.objetos))
    Base.:(==)(α::Morfismo, β::Morfismo) = α.comp == β.comp

    "Los cuadrados de naturalidad que NO conmutan (vacío si `α` es un morfismo)."
    function fallas_naturalidad(α::Morfismo)
        X, Y, S = α.dom, α.cod, α.dom.esquema
        malos = String[]
        for o in S.objetos
            c = α.comp[o]
            (length(c) == X.tam[o] && all(1 .<= c .<= Y.tam[o])) ||
                return ["La componente de $o no es una función de $(X.tam[o]) elementos en $(Y.tam[o])."]
        end
        for f in S.flechas, x in 1:X.tam[f.dom]
            arriba = α.comp[f.cod][X.fun[f.nombre][x]]    # primero f en X, luego α   (ruta de arriba)
            abajo  = Y.fun[f.nombre][α.comp[f.dom][x]]    # primero α, luego f en Y   (ruta de abajo)
            arriba == abajo ||
                push!(malos, "El cuadrado de `$(f.nombre)` no conmuta en el elemento $x de $(f.dom): la ruta de arriba llega a $arriba y la de abajo a $abajo.")
        end
        malos
    end
    es_morfismo(α::Morfismo) = isempty(fallas_naturalidad(α))

    "Composición en orden diagramático: primero `α`, luego `β`; en cada objeto, `β_c ∘ α_c`."
    componer(α::Morfismo, β::Morfismo) =
        Morfismo(α.dom, β.cod, Dict{Symbol,Vector{Int}}(o => β.comp[o][α.comp[o]] for o in α.dom.esquema.objetos))
    "El morfismo «sé como eres»: la identidad."
    identidad(X::Instancia) = Morfismo(X, X, Dict{Symbol,Vector{Int}}(o => collect(1:X.tam[o]) for o in X.esquema.objetos))
    es_inyectivo(α::Morfismo) = all(allunique(α.comp[o]) for o in α.dom.esquema.objetos)
    es_isomorfismo(α::Morfismo) = all(allunique(α.comp[o]) && α.dom.tam[o] == α.cod.tam[o] for o in α.dom.esquema.objetos)
end;

# ╔═╡ 126412ba-1d6e-5f4c-9bf4-e2c9177917a4
md"""
### Un algoritmo para contar

Ya podemos responder la pausa de la sección 5.2. El algoritmo más directo es la definición misma: probar **todas** las parejas de funciones y quedarse con las que hacen conmutar los cuadrados.
"""

# ╔═╡ a3c4f5f4-0a4b-5738-8665-664209489d14
"""
    morfismos_ingenuos(X, Y)

Fuerza bruta pura: recorre TODAS las parejas (función de vértices, función de flechas)
y se queda con las que hacen conmutar los cuadrados. Es la definición, literalmente.
"""
function morfismos_ingenuos(X::Instancia, Y::Instancia)
    encontrados = Morfismo[]
    for αV in Iterators.product(fill(1:Y.tam[:V], X.tam[:V])...),
        αA in Iterators.product(fill(1:Y.tam[:A], X.tam[:A])...)
        α = morfismo(X, Y; V = collect(Int, αV), A = collect(Int, αA))
        es_morfismo(α) && push!(encontrados, α)
    end
    encontrados
end;

# ╔═╡ 3f4617f9-d05f-529e-92bf-51dd146b3f5d
let
    X, Y = verano, esqui
    candidatos = Y.tam[:V]^X.tam[:V] * Y.tam[:A]^X.tam[:A]
    (; candidatos_revisados = candidatos,
       morfismos_por_fuerza_bruta = length(morfismos_ingenuos(X, Y)),
       morfismos_con_retroceso = length(morfismos(X, Y)))
end

# ╔═╡ 1ab79d37-0853-5f7d-9f4b-b8a58a8d0228
md"""
Revisar ``|V_Y|^{|V_X|} \cdot |A_Y|^{|A_X|}`` candidatos se vuelve imposible muy rápido: para el hexágono y el triángulo de abajo serían ``3^6 \cdot 3^6 = 531\,441``. Por eso la función `morfismos` que usamos en todo el cuaderno es más lista: asigna **un elemento a la vez** y abandona una rama en cuanto un cuadrado ya no puede conmutar (búsqueda con *retroceso*). Las dos dan la misma respuesta; su código está en *Detrás del telón*.

!!! margen "Para comprobarlo"
    Escribe en una celda nueva `length(morfismos_ingenuos(hexagono, triangulo_dirigido))`. Tardará un poco más, pero dará lo mismo que `morfismos`.

### Sé como eres

Toda gráfica tiene un morfismo especial a sí misma, que manda cada vértice y cada flecha a sí mismos. El libro lo llama el morfismo **«sé como eres»**; su nombre técnico es la **identidad**, ``\mathrm{id}_X``. Parece aburrido, pero sirve para decir con precisión cuándo dos gráficas son *la misma*.

!!! definicion "Definición 5.4 (Isomorfismo)"
    Un morfismo ``\alpha \colon X \to Y`` es un **isomorfismo** si existe ``\beta \colon Y \to X`` con ``\alpha \mathbin{⨟} \beta = \mathrm{id}_X`` y ``\beta \mathbin{⨟} \alpha = \mathrm{id}_Y``. Entonces decimos que ``X`` y ``Y`` son **isomorfas**: la misma forma con otros nombres.

!!! teorema "Proposición 5.5"
    Un morfismo de instancias ``\alpha`` es un isomorfismo si y solo si cada componente ``\alpha_c`` es biyectiva.

!!! demostracion "Demostración"
    (⇒) Si ``\beta`` es su inversa, en cada objeto ``\alpha_c \mathbin{⨟} \beta_c = \mathrm{id}`` y ``\beta_c \mathbin{⨟} \alpha_c = \mathrm{id}``, así que ``\alpha_c`` es biyectiva. (⇐) Si cada ``\alpha_c`` es biyectiva, sea ``\beta_c = \alpha_c^{-1}``. Falta ver que ``\beta`` es un morfismo: dada ``f \colon c \to d``, partimos de ``\alpha_d \circ X(f) = Y(f) \circ \alpha_c``; componiendo con ``\beta_d`` por la izquierda y con ``\beta_c`` por la derecha queda ``X(f) \circ \beta_c = \beta_d \circ Y(f)``, que es el cuadrado de ``\beta``.

!!! pausa "Pausa para pensar (del libro)"
    Si la gráfica ``X`` se inyecta en ``Y`` y ``Y`` se inyecta en ``X``, ¿qué puedes decir de ``X`` y ``Y``?

!!! teorema "Proposición 5.6"
    Si hay inyecciones ``X \to Y`` y ``Y \to X`` entre gráficas **finitas**, entonces ``X`` y ``Y`` son isomorfas.

!!! demostracion "Demostración"
    Una función inyectiva entre conjuntos finitos no puede tener más elementos en su dominio que en su codominio. Las dos inyecciones dan ``|V_X| \le |V_Y| \le |V_X|`` y ``|A_X| \le |A_Y| \le |A_X|``, así que los tamaños coinciden. Una función inyectiva entre conjuntos finitos del **mismo** tamaño es biyectiva; por lo tanto la inyección ``X \to Y`` tiene componentes biyectivas y, por la Proposición 5.5, es un isomorfismo.

Por eso el romance, el folleto de esquí y los platos del capítulo 0 son isomorfos. ¿Cuántos isomorfismos hay entre el romance y los platos? (Entre gráficas finitas del mismo tamaño, las inyecciones son justamente los isomorfismos.)
"""

# ╔═╡ 4a00b2f6-0c26-5857-8fc0-5a6d05de827c
length(morfismos(romance, platos; inyectivo = true))

# ╔═╡ 586f206e-2748-5563-acbb-872e7065f967
md"""
### Morfismos de gráficas en Julia

Ahora los rompecabezas 3 a 7 del libro. Primero piensa tu respuesta; luego ejecuta.

!!! rompecabezas "Rompecabezas 3"
    La gráfica de verano (dos flechas opuestas) se inyecta en la gráfica de la derecha. ¿Cuántos **otros** morfismos hay? (El libro: tres en total, dos inyecciones y una manera de colapsar todo en un vértice.)
"""

# ╔═╡ 8fd7aa01-c158-5ff4-abd2-33daca6f2299
morfismos(grafica(2, [1, 2], [2, 1]), grafica(3, [1, 2, 2, 3], [2, 3, 1, 3]))

# ╔═╡ 3b32ae86-bedc-5502-bed4-8e0101d8953f
md"""
!!! rompecabezas "Rompecabezas 4 y 5"
    ¿De cuántas maneras se puede mandar un triángulo dirigido a un hexágono dirigido? ¿Y el hexágono al triángulo?

$(@bind q_hex opciones(["0 y 3", "3 y 0", "6 y 6", "2 y 3"]))
"""

# ╔═╡ e2578f3c-2f15-529b-a811-ee719670dab8
corregir(q_hex, "0 y 3",
    "Un morfismo manda un ciclo de 3 pasos a un camino cerrado de 3 pasos, y el hexágono no tiene ninguno: el libro lo llama *pregunta tramposa*. Al revés, el hexágono se **enrolla dos veces** sobre el triángulo, en 3 posiciones.",
    "Sigue las flechas: una vuelta al triángulo son 3 pasos. ¿Hay un camino cerrado de 3 pasos en el hexágono?")

# ╔═╡ 382bcb15-1017-57e0-8d0c-099038bcc102
begin
    hexagono = grafica(6, [1, 2, 3, 4, 5, 6], [2, 3, 4, 5, 6, 1])
    (; triangulo_a_hexagono = length(morfismos(triangulo_dirigido, hexagono)),
       hexagono_a_triangulo = length(morfismos(hexagono, triangulo_dirigido)))
end

# ╔═╡ 1af6347a-6e94-5de6-821d-3614fa068f3d
morfismos(hexagono, triangulo_dirigido)

# ╔═╡ c426b067-4c1f-584b-aff3-879b42a311bc
md"""
!!! rompecabezas "Rompecabezas 6"
    Un vértice con lazo y una flecha hacia otro vértice, dentro de una «estrella» con lazos en el centro y en una punta. (El libro: **cinco**, tres inyecciones y dos que colapsan en un lazo.)
"""

# ╔═╡ 59fe5b37-3342-58d8-8f49-414f4780c30c
let
    hoja = grafica(2, [1, 1], [1, 2])
    estrella = grafica(4, [1, 1, 1, 1, 4], [1, 2, 3, 4, 4])
    (; morfismos = length(morfismos(hoja, estrella)), inyecciones = length(morfismos(hoja, estrella; inyectivo = true)))
end

# ╔═╡ 6aa9a8b0-bb39-5c1b-8690-887ce6ef395a
md"""
!!! rompecabezas "Rompecabezas 7"
    El mismo de antes, pero con **gráficas reflexivas**: ahora cada vértice tiene su lazo especial. (El libro: **siete**, tres inyecciones y cuatro que van a lazos.)

!!! rigor "Rigor: una discrepancia que se resuelve con cuidado"
    En la **figura** del libro, los lazos de color de la hoja y de la estrella **son** los lazos especiales (los únicos que hay). En el **código** del libro, en cambio, se crean gráficas reflexivas, que ya traen sus lazos, y **además** se agregan los lazos de color: cada vértice con lazo termina con dos. Julia cuenta las dos versiones:
"""

# ╔═╡ d7199139-a604-5bdb-a9c6-7b16cade4745
let
    hoja_fig = reflexiva(2, [1], [2])                       # como en la figura
    estrella_fig = reflexiva(4, [1, 1, 1], [2, 3, 4])
    hoja_cod = reflexiva(2, [1, 1], [1, 2])                 # como en el código: lazo extra
    estrella_cod = reflexiva(4, [1, 1, 1, 1, 4], [1, 2, 3, 4, 4])
    (; según_la_figura = length(morfismos(hoja_fig, estrella_fig)),
       inyecciones_figura = length(morfismos(hoja_fig, estrella_fig; inyectivo = true)),
       según_el_código = length(morfismos(hoja_cod, estrella_cod)))
end

# ╔═╡ 59d9b97e-c838-591b-b579-cd7ef59e98da
md"""
Con las gráficas de la figura salen **7**, como dice el libro. Con las del código, la respuesta correcta es **16**: el lazo extra multiplica las opciones. Las dos respuestas son correctas *para su gráfica*. Las búsquedas exhaustivas no se cansan ni se confunden; por eso, en matemáticas aplicadas, verificar con la computadora es parte del rigor.

!!! observacion "Observación (por qué cambian las cuentas)"
    En una gráfica reflexiva, un morfismo debe mandar lazos especiales a lazos especiales (lo exige el cuadrado de ``\operatorname{refl}``). A cambio, **cualquier** flecha puede colapsarse en el lazo especial de un vértice: es la manera de «quedarse quieto». Y el libro lo subraya: Julia cuenta igual para gráficas dirigidas que para reflexivas, sin código especial.
"""

# ╔═╡ 9131bf1c-300c-5649-a0b3-ab1582b0d492
plegable("Así se escribe en AlgebraicJulia", md"""
```julia
homomorphisms(G1, G2)                  # todos los morfismos
homomorphisms(G1, G2; monic = true)    # solo los inyectivos
is_natural(ACSetTransformation(G1, G2; V = [1, 2], E = [1, 2]))
```
""")

# ╔═╡ 64b6fb43-24b0-5453-97bc-6b0ca1c953f5
md"""
## 5.4 La categoría de instancias

Mira otra vez un morfismo: arriba están los datos de ``X``, abajo los de ``Y``, y los mapas verticales van de arriba hacia abajo. Todo el paquete *se siente* como una flecha de ``X`` a ``Y``. Igual que en el capítulo 3, envolvemos todos los detalles en una nueva flecha gorda: una **flecha entre gráficas**. (El libro promete que es la última clase de flecha. Promesa cumplida.)

Para nosotros, un morfismo es el proceso geométrico de colocar una gráfica dentro de otra; para la computadora, es un par de mapas con cuadrados que conmutan. Las dos descripciones coinciden exactamente: si pensamos solo de manera geométrica, todo lo que pensemos se puede codificar. Los tres morfismos del rompecabezas 3 son, en el universo, **tres flechas** entre dos gráficas:
"""

# ╔═╡ 0b058142-ce2d-5481-8234-22fc3b64ea24
figura(flechas_entre(grafica(2, [1, 2], [2, 1]; pos = [(60, 120), (160, 120)]), grafica(3, [1, 2, 2, 3], [2, 3, 1, 3]; pos = [(40, 160), (120, 60), (200, 160)]), 3), "5.6",
    "En el universo, los tres morfismos del rompecabezas 3 son tres flechas entre dos gráficas.")

# ╔═╡ 0dea632e-97ac-595e-98c9-e51e0cb320af
md"""
Este universo de gráficas y flechas es una **categoría**: la *categoría de instancias* del esquema. Cuando Julia cuenta los tres morfismos, es como un genio que mira dentro de la categoría y saca todas las flechas que cumplen la descripción. El libro se detiene aquí; nosotros vamos a dar la definición precisa y a comprobarla.

!!! margen "Más allá del libro"
    Lo que sigue (definiciones 5.7 a 5.14) formaliza la palabra *categoría* del libro. Es la teoría de Eilenberg y Mac Lane (1945).

!!! definicion "Definición 5.7 (Categoría)"
    Una **categoría** ``\mathsf{C}`` consta de una colección de **objetos**; para cada par de objetos ``a, b``, un conjunto ``\mathsf{C}(a, b)`` de **flechas** ``f \colon a \to b``; una **composición** que a ``f \colon a \to b`` y ``g \colon b \to c`` les asigna ``f \mathbin{⨟} g \colon a \to c``; y para cada objeto una **identidad** ``\mathrm{id}_a \colon a \to a``; tales que, para todas las flechas componibles,
    ```math
    \mathrm{id}_a \mathbin{⨟} f = f = f \mathbin{⨟} \mathrm{id}_b, \qquad (f \mathbin{⨟} g) \mathbin{⨟} h = f \mathbin{⨟} (g \mathbin{⨟} h).
    ```

Eso es todo. Lo poderoso es cuántas cosas cumplen esta definición. Para categorías **finitas**, la computadora puede revisar todos los casos:
"""

# ╔═╡ ff1fe8ad-82dc-5eb9-97e3-9523f61ec58b
begin
    """
    Una categoría finita dada por extensión (Definición 5.7): objetos, TODAS sus flechas
    (cada una con `dom`, `cod` y un `dato`), la composición `componer(f, g) = f ⨟ g` y las identidades.
    """
    struct CategoriaFinita
        nombre::String
        objetos::Vector{Any}
        flechas::Vector{Any}
        componer::Function
        id::Function
    end

    "Revisa, caso por caso, los axiomas de categoría."
    function verificar_categoria(C::CategoriaFinita)
        cerrada = izq = der = asoc = 0
        fc = fi = fd = fa = 0
        for f in C.flechas
            izq += 1; C.componer(C.id(f.dom), f) == f || (fi += 1)       # id ⨟ f = f
            der += 1; C.componer(f, C.id(f.cod)) == f || (fd += 1)       # f ⨟ id = f
        end
        for f in C.flechas, g in C.flechas
            f.cod == g.dom || continue                                   # solo pares componibles
            cerrada += 1
            fg = C.componer(f, g)
            (fg.dom == f.dom && fg.cod == g.cod && fg in C.flechas) || (fc += 1)
            for h in C.flechas
                g.cod == h.dom || continue
                asoc += 1
                C.componer(fg, h) == C.componer(f, C.componer(g, h)) || (fa += 1)   # asociatividad
            end
        end
        Comprobacion("axiomas de categoría en *$(C.nombre)*", [
            ("la composición de flechas componibles es una flecha de la categoría", cerrada, fc),
            ("identidad por la izquierda: id ⨟ f = f", izq, fi),
            ("identidad por la derecha: f ⨟ id = f", der, fd),
            ("asociatividad: (f ⨟ g) ⨟ h = f ⨟ (g ⨟ h)", asoc, fa)])
    end
end;

# ╔═╡ 0547dbd0-e438-5d41-a60e-d328964ab04c
md"""
!!! ejemplo "Ejemplo 5.8 (Los conjuntos y las funciones)"
    Los conjuntos ``\{1\}``, ``\{1, 2\}`` y ``\{1, 2, 3\}`` y **todas** las funciones entre ellos: 56 funciones, 1 618 pares componibles y 48 340 ternas componibles.
"""

# ╔═╡ 8701a574-e2a9-5c22-8be7-8d18144b4dc8
verificar_categoria(conjuntos_finitos([1, 2, 3]))

# ╔═╡ 64c7e805-a1af-5d0b-93b0-4434aa8859b7
md"""
Para *todos* los conjuntos no hace falta la computadora: la composición de funciones es asociativa y tiene identidades (capítulo 4). Esa categoría se llama ``\mathsf{Set}`` (en algunos textos en español, ``\mathsf{Conj}``).

!!! ejemplo "Ejemplo 5.9 (Un orden es una categoría)"
    Los números del 1 al 12 ordenados por divisibilidad (un *conjunto parcialmente ordenado*): hay una flecha ``a \to b`` cuando ``a`` divide a ``b``. Componer es la transitividad; la identidad, que cada número se divide a sí mismo. Este orden aparece en la sección 2.1.1 de la tesis de Libkind, y es una gráfica reflexiva, como anunciaba el capítulo 4.
"""

# ╔═╡ c725a938-3a66-57ae-8f3e-15a6b9861c59
verificar_categoria(orden_como_categoria("divisibilidad en {1,…,12}", 1:12, (a, b) -> b % a == 0))

# ╔═╡ 2eb1af7d-be9b-597f-954b-fe005378cff6
md"""
!!! teorema "Proposición 5.10 (Las instancias forman una categoría)"
    Para cualquier esquema ``\mathcal{C}``, las instancias de ``\mathcal{C}`` y sus morfismos forman una categoría ``\mathcal{C}\text{-}\mathsf{Set}``, con la composición ``(\alpha \mathbin{⨟} \beta)_c = \beta_c \circ \alpha_c`` y las identidades ``(\mathrm{id}_X)_c = \mathrm{id}_{X(c)}``.

!!! demostracion "Demostración"
    Hay que ver que ``\alpha \mathbin{⨟} \beta`` es un morfismo. Para ``f \colon c \to d`` se **pegan** los dos cuadrados: ``(\beta_d \circ \alpha_d) \circ X(f) = \beta_d \circ Y(f) \circ \alpha_c = Z(f) \circ (\beta_c \circ \alpha_c)``, usando primero el cuadrado de ``\alpha`` y luego el de ``\beta``. La identidad conmuta trivialmente. La asociatividad y las leyes de identidad se cumplen componente por componente porque se cumplen para funciones.

Tomemos cinco gráficas y **todos** los morfismos entre ellas (son 27):
"""

# ╔═╡ 7150e339-678c-58ea-8a13-372d9e75b39d
verificar_categoria(categoria_de_instancias("cinco gráficas y todos sus morfismos",
    [verano, esqui, triangulo_dirigido, grafica(1, [1], [1]), grafica(2, [1], [2])]))

# ╔═╡ 0468a7d6-fe96-52d1-888f-aa243c18a275
md"""
!!! ejemplo "Ejemplo 5.11 (¡El esquema también es una categoría!)"
    Los caminos de un esquema se componen pegándolos y el camino vacío es la identidad: es la **categoría libre** sobre la gráfica de flechas generadoras. Si además identificamos dos caminos cuando uno se obtiene del otro reemplazando un tramo ``p`` por ``q`` (o ``q`` por ``p``) para alguna ecuación ``p = q`` —es decir, cocientamos por la **congruencia** generada por las ecuaciones, la menor relación de equivalencia que las contiene y es compatible con la composición—, obtenemos la categoría **presentada** por el esquema. En el esquema reflexivo cada camino se simplifica con las ecuaciones (``\operatorname{refl} \mathbin{⨟} \operatorname{src} \to \mathrm{id}``, ``\operatorname{refl} \mathbin{⨟} \operatorname{tgt} \to \mathrm{id}``) hasta su **forma normal**. Estos son todos los caminos de ``A`` a ``A``:
"""

# ╔═╡ 3ed712f2-267e-5c08-bb6a-dfac92b50634
[texto_camino(c, :A) for c in hom_esquema(REFLEXIVA, :A, :A)]

# ╔═╡ 39a07172-dfce-55ab-aa44-5a45e469bc4c
md"""
Tres flechas: la identidad, «ve a tu origen y toma su lazo» y «ve a tu destino y toma su lazo». Caminos más largos, como ``\operatorname{src} \mathbin{⨟} \operatorname{refl} \mathbin{⨟} \operatorname{src} \mathbin{⨟} \operatorname{refl}``, se reducen a uno de esos tres.
"""

# ╔═╡ 388e2772-0e13-52dd-bdc8-fd4ae19d3764
verificar_categoria(categoria_del_esquema(REFLEXIVA))

# ╔═╡ 44f2b229-f60a-5e83-9a47-aa8d5d3d1810
md"""
### Funtores y transformaciones naturales

!!! definicion "Definición 5.12 (Funtor)"
    Un **funtor** ``F \colon \mathsf{C} \to \mathsf{D}`` asigna a cada objeto ``a`` de ``\mathsf{C}`` un objeto ``F(a)`` de ``\mathsf{D}`` y a cada flecha ``f \colon a \to b`` una flecha ``F(f) \colon F(a) \to F(b)``, de modo que ``F(\mathrm{id}_a) = \mathrm{id}_{F(a)}`` y ``F(f \mathbin{⨟} g) = F(f) \mathbin{⨟} F(g)``.

!!! teorema "Proposición 5.13 (Una instancia es un funtor)"
    Una instancia de un esquema ``\mathcal{C}`` es exactamente un funtor de la categoría presentada por ``\mathcal{C}`` en ``\mathsf{Set}``.

!!! demostracion "Demostración"
    Un funtor queda determinado por lo que hace en las flechas generadoras, porque cualquier otra flecha es un camino y ``F`` debe respetar la composición: ``F(f_1 \mathbin{⨟} \cdots \mathbin{⨟} f_k) = F(f_k) \circ \cdots \circ F(f_1)``. Esa asignación está **bien definida** en la categoría presentada exactamente cuando ``F(p) = F(q)`` para cada ecuación ``p = q``, que es la condición de la Definición 3.2: si las ecuaciones se respetan, también se respeta la congruencia que generan, porque ``F(u \mathbin{⨟} p \mathbin{⨟} w) = F(u) \mathbin{⨟} F(p) \mathbin{⨟} F(w) = F(u \mathbin{⨟} q \mathbin{⨟} w)``. Recíprocamente, una instancia define así un funtor, y las dos construcciones son inversas una de la otra.

Julia revisa que la gráfica reflexiva del capítulo 4 respeta composición, identidades y ecuaciones en todos los caminos de longitud a lo más 4:
"""

# ╔═╡ 892f98af-7e65-5ee4-b0e6-801afac9ef8a
verificar_funtor(reflexiva(2, [1], [2]))

# ╔═╡ a2b148d4-1e2e-5a78-9371-c3e023a25f54
md"""
!!! definicion "Definición 5.14 (Transformación natural)"
    Dados funtores ``F, G \colon \mathsf{C} \to \mathsf{D}``, una **transformación natural** ``\alpha \colon F \Rightarrow G`` es una flecha ``\alpha_a \colon F(a) \to G(a)`` por objeto tal que ``F(f) \mathbin{⨟} \alpha_b = \alpha_a \mathbin{⨟} G(f)`` para toda ``f \colon a \to b``.

¡Es exactamente la Definición 5.3! Un morfismo de instancias **es** una transformación natural, y sus cuadrados son los mismos que pedimos que conmuten desde la sección 5.2. Por eso ``\mathcal{C}\text{-}\mathsf{Set}`` también se escribe ``[\mathcal{C}, \mathsf{Set}]``: la categoría de funtores de ``\mathcal{C}`` en ``\mathsf{Set}``. A un funtor ``\mathcal{C} \to \mathsf{Set}`` también se le llama **copregavilla** sobre ``\mathcal{C}`` (una *pregavilla* es un funtor ``\mathcal{C}^{\mathrm{op}} \to \mathsf{Set}``).

!!! pausa "Pausa para pensar"
    En el esquema reflexivo, ¿cuántas flechas tiene ``\operatorname{Hom}(V, A)``?

$(@bind q_hom opciones(["1", "2", "3", "Infinitas"]))
"""

# ╔═╡ d3608e32-7107-570a-9829-1a802803f6e9
corregir(q_hom, "1",
    "Solo `refl`. Caminos como `refl ⨟ src ⨟ refl` se simplifican a `refl` con las ecuaciones. Compruébalo con `hom_esquema(REFLEXIVA, :V, :A)`.",
    "Escribe en una celda nueva `hom_esquema(REFLEXIVA, :V, :A)` y mira qué caminos sobreviven al simplificar.")

# ╔═╡ 3286dadb-1d56-52f4-9e4a-f7ccdd2a0b39
md"""
| Peldaño | Lo que es | Su nombre en teoría de categorías |
|:--------|:----------|:----------------------------------|
| 1. Dibujos | puntos y flechas | — |
| 2. Datos | conjuntos y funciones `src`, `tgt` | una instancia: un funtor ``\mathcal{C} \to \mathsf{Set}`` |
| 3. Planos | objetos, flechas, ecuaciones | un esquema: una categoría finitamente presentada |
| 4. Universos | todas las instancias y sus morfismos | la categoría ``[\mathcal{C}, \mathsf{Set}]`` |

## 5.5 Resumen

!!! resumen "Resumen del capítulo 5"
    Desarrollamos la idea crucial de **morfismo de gráficas** desde dos puntos de vista, el geométrico (humano) y el de los cuadrados conmutativos (computacional), y vimos que coinciden exactamente (Definiciones 5.1 a 5.4). Los diagramas conmutativos son el pan de cada día de la teoría de categorías. Las instancias y sus morfismos forman una **categoría** (Proposición 5.10). En los capítulos 6 y 7 descubriremos patrones de morfismos que corresponden a operaciones útiles —pegar, borrar, reemplazar— y veremos que nos ponen en una posición muy ventajosa frente a las flechas colgantes. Para profundizar, el libro recomienda *Conceptual Mathematics* de Lawvere y Schanuel.
"""

# ╔═╡ 092fe119-095c-58d9-a9d8-27e722110e4b
capitulo(6, "Combinar gráficas";
    libro = "Sigue el capítulo 6 del libro.",
    metas = ["describir la parte común de dos gráficas con un **span**;",
             "definir el **pushout** por lo que *hace* (cuadrado conmutativo y propiedad universal), no por lo que contiene;",
             "demostrar que es único salvo isomorfismo y **calcularlo** con unión-búsqueda."])

# ╔═╡ 41701be6-a662-5692-acdc-3338e7142fa9
md"""
## 6.1 Introducción

Hasta aquí: las gráficas modelan relaciones, un morfismo identifica una gráfica dentro de otra (puede juntar cosas, pero **siempre conserva la conectividad**), y todas las gráficas con sus morfismos forman un universo, una **categoría**. En este capítulo *vivimos* dentro de la categoría de gráficas no dirigidas (simétricas) y aprendemos a **combinar dos gráficas en una**, algo parecido a sumar dos números (al final veremos que sumar números **es** combinar gráficas sin aristas).

Un ejemplo. Paul dice ser amigo de Tuco (otro Tuco: el gato de su vecino). Paul también es amigo de Brendan, Angeline y Priyaa, autores del libro. Si **pegamos** las dos gráficas de amistad por el vértice común, Paul, aparece información nueva: Tuco es *amigo de un amigo* de los tres.
"""

# ╔═╡ d3dde211-12b6-55d6-9c90-1128695ce1cb
begin
    amigos_X = simetrica(2, [(1, 2)]; nombres = ["Paul", "Tuco"], pos = [(150, 150), (300, 150)])
    amigos_Y = simetrica(4, [(1, 2), (1, 3), (1, 4)]; nombres = ["Paul", "Brendan", "Angeline", "Priyaa"],
        pos = [(150, 150), (300, 60), (330, 150), (300, 240)])
    solo_paul = simetrica(1, Tuple{Int,Int}[]; nombres = ["Paul"])
    pegar(morfismo(solo_paul, amigos_X; V = [1], A = Int[]), morfismo(solo_paul, amigos_Y; V = [1], A = Int[]))
end

# ╔═╡ 7e197b89-2f00-519b-9e95-9ebc0d920afa
md"""
El ejemplo engaña por sencillo: a ojo, todos sabemos pegar dos gráficas pequeñas. Las gráficas del mundo real, en cambio, son enormes, y pegarlas con lápiz y papel es imposible. La meta del capítulo es capturar nuestro sentido común en una forma **computable**, para que todos estemos de acuerdo, sin ambigüedad, en qué *significa* pegar dos gráficas. Lo haremos con un juego de mímica.

## 6.2 Combinar gráficas con memes

!!! clave "El juego"
    **Meta:** describir el resultado de pegar dos gráficas que se traslapan, al que llamaremos su **pushout**. **Regla:** la descripción **no puede mencionar** los vértices, las aristas ni los mapas de origen y destino del pushout.

¿Por qué esa regla? Porque una gráfica pegada debe «saber» qué gráficas pegó; si miramos adentro, nos encerramos en un solo mundo y perdemos de vista a los demás. Hay que quedarse en el nivel de la categoría (el peldaño 4) y hablar solo de **relaciones**. Usaremos dos «memes» del capítulo anterior: los morfismos y los diagramas conmutativos.

### La forma del traslape

Para pegar hay que saber qué tienen en común las dos gráficas. Un morfismo identifica una gráfica dentro de otra, así que la parte común es una gráfica ``K`` con **dos** morfismos que salen de ella:

!!! definicion "Definición 6.1 (Span, traslape)"
    Un **span** de ``X`` a ``Y`` es un objeto ``K`` con dos flechas ``X \xleftarrow{\ f\ } K \xrightarrow{\ g\ } Y``. Cuando ``X`` y ``Y`` son gráficas, decimos que ``K`` es su **traslape** (*overlap*): las regiones donde ``K`` cae en ``X`` y en ``Y`` son las que tienen en común.

!!! margen "Palabras"
    *Span* no tiene traducción establecida en español, así que se usa en inglés.

Como el traslape es él mismo una gráfica, la parte común **nunca** tiene flechas colgantes. En el ejemplo de los amigos, ``K`` es el vértice Paul. Los morfismos del traslape no tienen que ser inyectivos: lo que importa es la conectividad. Piensa en pegar el asa rota de una taza con dos gotas de pegamento: la taza, el asa y las gotas.

### Primera pasada: el cuadrado conmuta

Preguntémosle a otras gráficas: *¿cómo te relacionas con el pushout?* («Dime con quién andas y te diré quién eres».) Las primeras en contestar son ``X`` y ``Y``: como el pushout las pega, **las dos deben vivir dentro de él**, con morfismos ``i_X \colon X \to P`` e ``i_Y \colon Y \to P``. Además, el traslape debe caer en el **mismo lugar** del pushout, llegue por ``X`` o por ``Y``:
```math
\begin{array}{ccc}
K & \xrightarrow{\ f\ } & X \\[2pt]
{\scriptstyle g}\big\downarrow & & \big\downarrow{\scriptstyle i_X} \\[2pt]
Y & \xrightarrow{\ i_Y\ } & P
\end{array}
\qquad\qquad f \mathbin{⨟} i_X = g \mathbin{⨟} i_Y .
```
En la taza: los puntos de la taza y del asa que se pegaron ya no se distinguen en el objeto pegado.

!!! rompecabezas "Rompecabezas"
    El traslape es una arista; ``X`` y ``Y`` son triángulos que la contienen. ¿Puedes proponer **dos** gráficas distintas que hagan conmutar el cuadrado?
"""

# ╔═╡ 0bf590db-27cb-57bb-a284-8a4c49b8aef4
begin
    arista = simetrica(2, [(1, 2)])
    tri_A = simetrica(3, [(1, 2), (2, 3), (3, 1)])        # vértice 3: el verde
    tri_B = simetrica(3, [(1, 2), (2, 3), (3, 1)])        # vértice 3: el anaranjado
    f_arista = morfismo(arista, tri_A; V = [1, 2], A = [1, 2])
    g_arista = morfismo(arista, tri_B; V = [1, 2], A = [1, 2])
    pegado = pegar(f_arista, g_arista)
    # Cuatro candidatos del libro, cada uno con sus morfismos cX : X → Z y cY : Y → Z
    ida(n) = collect(1:n)
    candidatos = [
        "1. dos triángulos pegados por la arista" => (simetrica(4, [(1, 2), (2, 3), (3, 1), (2, 4), (4, 1)]), (ida(3), ida(6)), ([1, 2, 4], [1, 2, 7, 8, 9, 10])),
        "2. un solo triángulo (junta de más)"     => (simetrica(3, [(1, 2), (2, 3), (3, 1)]), (ida(3), ida(6)), (ida(3), ida(6))),
        "3. agrega un vértice y una arista"       => (simetrica(5, [(1, 2), (2, 3), (3, 1), (2, 4), (4, 1), (3, 5)]), (ida(3), ida(6)), ([1, 2, 4], [1, 2, 7, 8, 9, 10])),
        "4. un vértice con lazo (colapso total)"  => (simetrica(1, [(1, 1)]), ([1, 1, 1], [1, 2, 1, 2, 1, 2]), ([1, 1, 1], [1, 2, 1, 2, 1, 2])),
    ]
end;

# ╔═╡ f642bd1c-e1c6-5fbb-8148-a6ab71f38cf5
figura(lado_a_lado([dibujar(par.second[1]; ancho = 240, alto = 190) for par in candidatos]...), "6.1",
    "Los cuatro candidatos del libro (de izquierda a derecha y de arriba abajo, 1 a 4). Todos hacen conmutar el cuadrado.")

# ╔═╡ 6866386a-e39f-57ee-8694-686c3bdd516e
let
    filas = map(candidatos) do par
        nombre = par.first
        Z, (vX, aX), (vY, aY) = par.second
        cX = morfismo(tri_A, Z; V = vX, A = aX)
        cY = morfismo(tri_B, Z; V = vY, A = aY)
        conmuta = es_morfismo(cX) && es_morfismo(cY) && componer(f_arista, cX) == componer(g_arista, cY)
        de_P = cuantos_mediadores(pegado, cX, cY)
        hacia_P = count(u -> componer(cX, u) == pegado.iX && componer(cY, u) == pegado.iY, morfismos(Z, pegado.objeto))
        "| $nombre | $(conmuta ? "✓" : "✗") | **$de_P** | $hacia_P |"
    end
    Markdown.parse("| candidato ``Z`` | ¿conmuta? | flechas ``P \\to Z`` | flechas ``Z \\to P`` |\n|:--|:--:|:--:|:--:|\n" * join(filas, "\n"))
end

# ╔═╡ 883029ef-550b-5ae4-9654-b14f45a11ca9
md"""
### Segunda pasada: la propiedad universal

Muchos candidatos pasan la primera prueba. ¿Cuál es el «más natural»? El libro propone el principio del **mínimo esfuerzo**: el candidato 1 mantiene separados a ``X`` y ``Y`` salvo en el traslape; no junta información (como 2 y 4) ni agrega nada (como 3). Para precisar esa intuición, ``P`` le pregunta a cada candidato *¿cómo te relacionas conmigo?* La tabla de arriba lleva la cuenta, contando solo las flechas que hacen conmutar los dos triángulos:

- desde el candidato 1 hay **exactamente una** flecha hacia **cada** candidato (columna ``P \to Z``);
- del candidato 2 **no** hay flechas de regreso: lo que se juntó ya no se puede separar;
- del candidato 3 hay **dos**: el vértice extra puede mandarse a cualquiera de los dos vértices azules;
- del candidato 4 **no** hay: su lazo no cabe en una gráfica sin lazos.

Esa armonía de relaciones tiene nombre: **propiedad universal**.

!!! definicion "Definición 6.2 (Pushout)"
    Dado un span ``X \xleftarrow{f} K \xrightarrow{g} Y``, un **pushout** es un objeto ``P`` con flechas ``i_X \colon X \to P`` e ``i_Y \colon Y \to P`` tales que
    1. ``f \mathbin{⨟} i_X = g \mathbin{⨟} i_Y`` (el cuadrado conmuta), y
    2. **(propiedad universal)** para todo objeto ``Z`` con flechas ``c_X \colon X \to Z`` y ``c_Y \colon Y \to Z`` tales que ``f \mathbin{⨟} c_X = g \mathbin{⨟} c_Y``, existe **una única** flecha ``u \colon P \to Z`` con ``i_X \mathbin{⨟} u = c_X`` e ``i_Y \mathbin{⨟} u = c_Y``.

!!! info "Cómo se dice «pushout» en español"
    En las tesis mexicanas es común dejar **pushout** en inglés. También encontrarás **suma amalgamada** (sobre todo para conjuntos y grupos), **cuadrado cocartesiano** y **coproducto fibrado**. La construcción dual, con las flechas al revés, es el *pullback* o **producto fibrado**.

### Tercera pasada: unicidad (gratis)

No hay que pedir nada más: la propiedad universal ya obliga a que todos los ganadores sean, en la práctica, el mismo.

!!! teorema "Teorema 6.3 (El pushout es único salvo un único isomorfismo)"
    Si ``(P, i_X, i_Y)`` y ``(P', i'_X, i'_Y)`` son pushouts del mismo span, existe un único isomorfismo ``\varphi \colon P \to P'`` con ``i_X \mathbin{⨟} \varphi = i'_X`` e ``i_Y \mathbin{⨟} \varphi = i'_Y``.

!!! demostracion "Demostración"
    Como ``P'`` hace conmutar el cuadrado, la propiedad universal de ``P`` da una única ``\varphi \colon P \to P'`` con ``i_X \mathbin{⨟} \varphi = i'_X`` e ``i_Y \mathbin{⨟} \varphi = i'_Y``. Por simetría hay una única ``\psi \colon P' \to P`` con las propiedades análogas. Entonces ``\varphi \mathbin{⨟} \psi \colon P \to P`` cumple ``i_X \mathbin{⨟} \varphi \mathbin{⨟} \psi = i_X`` e ``i_Y \mathbin{⨟} \varphi \mathbin{⨟} \psi = i_Y``. Pero el morfismo «sé como eres» ``\mathrm{id}_P`` también las cumple, y la propiedad universal (con ``Z = P``) dice que hay **una sola** flecha así; luego ``\varphi \mathbin{⨟} \psi = \mathrm{id}_P``. Igualmente ``\psi \mathbin{⨟} \varphi = \mathrm{id}_{P'}``, así que ``\varphi`` es un isomorfismo.

!!! clave "Importante"
    La tercera pasada **no** impuso ningún requisito nuevo: que todos los ganadores sean isomorfos es *consecuencia* de las dos primeras.

## 6.3 ¿Qué es un pushout?

Un pushout es cualquier gráfica que pasa la primera y la segunda pasada, y todas las que pasan son «prácticamente la misma». El pensamiento relacional encuentra la solución preguntando **qué** buscamos, en lugar de construir **cómo** y luego verificar que la construcción funciona en todos los casos. En ese sentido, dice el libro, es *no invasivo*.

Aun así, la computadora necesita un **cómo**. Afortunadamente, para instancias de un esquema el pushout se calcula de manera muy concreta:

!!! teorema "Proposición 6.4 (Pushouts de instancias, objeto por objeto)"
    En ``\mathcal{C}\text{-}\mathsf{Set}`` todo span tiene pushout, y se calcula en cada objeto por separado: ``P(c)`` es el cociente de la unión disjunta ``X(c) \sqcup Y(c)`` por la menor relación de equivalencia que identifica ``f_c(k)`` con ``g_c(k)`` para cada ``k \in K(c)``. Las funciones ``X(h)`` y ``Y(h)`` de cada flecha ``h`` del esquema pasan juntas al cociente y definen ``P(h)``.

!!! demostracion "Demostración"
    En conjuntos, ese cociente es el pushout: una función que sale de él es lo mismo que dos funciones que coinciden en lo que se identificó, y eso da la existencia y la unicidad de ``u``. Las funciones pasan al cociente porque ``f`` y ``g`` son morfismos: para cada generador de la relación, ``X(h)(f_c(k)) = f_d(K(h)(k)) \sim g_d(K(h)(k)) = Y(h)(g_c(k))``; como la función ``X(h) \sqcup Y(h)`` manda generadores de ``\sim_c`` a elementos ``\sim_d``-equivalentes, también respeta la relación de equivalencia que generan. La ``u`` construida componente a componente es un morfismo porque los dos lados de cada cuadrado de naturalidad son funciones que salen del cociente y coinciden en ``X`` y en ``Y``; por unicidad son iguales. Por último, ``P`` cumple las ecuaciones del esquema porque ``X`` y ``Y`` las cumplen y todo elemento de ``P(c)`` es la clase de un elemento de ``X(c)`` o de ``Y(c)``.

El código es la proposición, línea por línea. La «menor relación de equivalencia» se calcula con una estructura de **unión-búsqueda** (*union-find*): cada elemento apunta a un representante de su clase y, para identificar dos clases, una apunta a la otra.
"""

# ╔═╡ b81df694-f657-5bb0-802b-62dc2538d4d1
begin
    "El pushout de `X ←f─ K ─g→ Y`: el objeto pegado `P` y las flechas `iX : X → P`, `iY : Y → P`."
    struct Pushout
        f::Morfismo
        g::Morfismo
        objeto::Instancia
        iX::Morfismo
        iY::Morfismo
    end

    """
        pegar(f, g)

    El pushout, objeto por objeto (Proposición 6.4): en cada objeto `c` se toma la unión
    disjunta `X(c) ⊔ Y(c)` y se divide entre la menor relación de equivalencia que identifica
    `f(k)` con `g(k)` para cada `k ∈ K(c)`. Después cada función pasa al cociente.
    """
    function pegar(f::Morfismo, g::Morfismo)
        K, X, Y = f.dom, f.cod, g.cod
        S = X.esquema
        tam = Dict{Symbol,Int}(); iX = Dict{Symbol,Vector{Int}}(); iY = Dict{Symbol,Vector{Int}}()
        for c in S.objetos
            nx, ny = X.tam[c], Y.tam[c]
            padre = collect(1:nx+ny)                      # unión-búsqueda sobre X(c) ⊔ Y(c)
            raiz(a) = (while padre[a] != a; a = padre[a]; end; a)
            for k in 1:K.tam[c]                           # identificar f(k) ~ g(k)
                a, b = raiz(f.comp[c][k]), raiz(nx + g.comp[c][k])
                a != b && (padre[max(a, b)] = min(a, b))
            end
            clase = Dict{Int,Int}()                       # numerar las clases: P(c) = {1,…,n}
            num = [get!(clase, raiz(a), length(clase) + 1) for a in 1:nx+ny]
            tam[c] = length(clase); iX[c] = num[1:nx]; iY[c] = num[nx+1:end]
        end
        fun = Dict{Symbol,Vector{Int}}()                  # P(h)([z]) = [X(h)(z)]  o  [Y(h)(z)]
        for h in S.flechas
            v = zeros(Int, tam[h.dom])
            for (Z, i) in ((X, iX), (Y, iY)), z in 1:Z.tam[h.dom]
                v[i[h.dom][z]] = i[h.cod][Z.fun[h.nombre][z]]
            end
            fun[h.nombre] = v
        end
        P = colocar_pegado(Instancia(S, tam, fun, Tuple{Float64,Float64}[], String[]), X, Y, iX, iY)
        Pushout(f, g, P, Morfismo(X, P, iX), Morfismo(Y, P, iY))
    end

    "La ÚNICA `u : P → Z` con `iX ⨟ u = cX` e `iY ⨟ u = cY` (propiedad universal)."
    function mediador(po::Pushout, cX::Morfismo, cY::Morfismo)
        P = po.objeto
        comp = Dict{Symbol,Vector{Int}}()
        for c in P.esquema.objetos
            u = zeros(Int, P.tam[c])
            for (i, z) in ((po.iX, cX), (po.iY, cY)), e in eachindex(i.comp[c])
                u[i.comp[c][e]] = z.comp[c][e]            # u([e]) = cX(e)  o  cY(e)
            end
            comp[c] = u
        end
        Morfismo(P, cX.cod, comp)
    end

    "Cuenta por fuerza bruta las `u : P → Z` que hacen conmutar los dos triángulos."
    cuantos_mediadores(po::Pushout, cX::Morfismo, cY::Morfismo) =
        count(u -> componer(po.iX, u) == cX && componer(po.iY, u) == cY, morfismos(po.objeto, cX.cod))
end;

# ╔═╡ 9c4770be-adac-5b00-814a-99383663899a
md"""
### El algoritmo, paso a paso

Mueve el deslizador para ver cómo la unión-búsqueda va juntando clases en el ejemplo de los dos triángulos: primero en los vértices y después en las flechas. Las ``x_i`` son elementos de ``X`` y las ``y_j`` de ``Y``.

**paso:** $(@bind paso_pegado deslizador(0:4, default = 0))
"""

# ╔═╡ 215235c9-eed5-56e8-9b90-d42d690ed7bb
visor_pegado(f_arista, g_arista, paso_pegado)

# ╔═╡ b8a1cd21-6998-5977-92ef-13038f3fd80e
md"""
## 6.4 ¡Hora de rompecabezas!

Calcula cada pushout a mano antes de ejecutar la celda.

!!! rompecabezas "Rompecabezas 1 (pegar por un vértice)"
    El traslape es un solo vértice; ``X`` es un triángulo; ``Y`` es una arista con un lazo en su segundo vértice. El vértice del traslape cae en el vértice **sin** lazo de ``Y``.
"""

# ╔═╡ ac0e5a97-0d80-52cd-8bc3-def1a1265d41
let
    K, X, Y = simetrica(1, Tuple{Int,Int}[]), simetrica(3, [(1, 2), (2, 3), (3, 1)]), simetrica(2, [(1, 2), (2, 2)])
    pegar(morfismo(K, X; V = [1], A = Int[]), morfismo(K, Y; V = [1], A = Int[]))
end

# ╔═╡ d3640fd5-fa1e-5219-9e27-71610a21f945
md"""
!!! rompecabezas "Rompecabezas 2 (pegar por una arista que se dobla)"
    El traslape es una arista ``a — b``. En el triángulo cae en una arista normal, pero en ``Y`` **los dos extremos** caen en el vértice con lazo: la arista del traslape se manda al lazo. ¿Cómo queda el traslape dentro del pushout?
"""

# ╔═╡ 842f2c84-406e-5ff0-83a4-e771e8669a18
let
    K, X, Y = simetrica(2, [(1, 2)]), simetrica(3, [(1, 2), (2, 3), (3, 1)]), simetrica(2, [(1, 2), (2, 2)])
    pegar(morfismo(K, X; V = [1, 2], A = [1, 2]), morfismo(K, Y; V = [2, 2], A = [3, 4]))
end

# ╔═╡ a433fdbc-2c34-5cef-91f2-a624a6461927
md"""
Como ``Y`` ya identificó los dos extremos, el pushout **también** debe identificarlos: el triángulo se dobla, una de sus aristas se vuelve el lazo y las otras dos quedan como aristas paralelas. Nadie programó ese caso especial; lo obliga el cuadrado conmutativo.

!!! rompecabezas "Rompecabezas 3 (pegar sin pegamento)"
    El traslape es la gráfica **vacía**, ``X`` tiene 3 vértices sueltos y ``Y`` tiene 2. ¿Cuántos vértices tiene el pushout? ¿Qué tiene que ver esto con sumar?

$(@bind q_suma opciones(["3", "2", "5", "6"]))
"""

# ╔═╡ c080a283-0909-5858-aeb3-4a434f2c2329
corregir(q_suma, "5",
    "Sin traslape no se identifica nada: el pushout es la **unión disjunta**, ``3 + 2 = 5``. ¡Sumar números es pegar gráficas sin aristas!",
    "Si el traslape está vacío, ¿hay algo que identificar entre las dos gráficas?")

# ╔═╡ 585fa77f-c932-598c-a44b-ed4dc70e7c25
let
    vacia, tres, dos = simetrica(0, Tuple{Int,Int}[]), simetrica(3, Tuple{Int,Int}[]), simetrica(2, Tuple{Int,Int}[])
    P = pegar(morfismo(vacia, tres; V = Int[], A = Int[]), morfismo(vacia, dos; V = Int[], A = Int[])).objeto
    "3 + 2 = $(P.tam[:V])"
end

# ╔═╡ b9275d2b-8a8f-59f5-ab29-142d7a028028
md"""
!!! ejercicio "Ejercicio 4 (pushouts finitos)"
    ¿Y si queremos pegar **más** de dos gráficas, ``X_1, \dots, X_n``, todas a lo largo de un mismo traslape ``K``? ¿Qué requisitos debe cumplir el resultado? Pista: extiende las dos pasadas de 2 a ``n`` gráficas.
"""

# ╔═╡ e0e8ffa8-c59c-5d8d-a33f-4c54e8391842
plegable("Una respuesta", md"""
*Primera pasada:* hay flechas ``i_k \colon X_k \to P`` con ``f_1 \mathbin{⨟} i_1 = \cdots = f_n \mathbin{⨟} i_n``. *Segunda pasada:* para cualquier otro ``Z`` con flechas ``c_k \colon X_k \to Z`` que cumplan lo mismo, hay una única ``u \colon P \to Z`` con ``i_k \mathbin{⨟} u = c_k`` para todo ``k``. Es el **colímite** del diagrama en forma de estrella. Se calcula pegando de dos en dos: primero ``X_1`` con ``X_2``, luego el resultado con ``X_3``, etcétera. La propiedad universal garantiza que el orden no importa (salvo isomorfismo). La celda de abajo pega tres gráficas por Paul.
""")

# ╔═╡ ebe25ee2-2d34-52cf-87ac-8dbb60b2d4da
let
    trio = simetrica(2, [(1, 2)]; nombres = ["Paul", "Toni"], pos = [(260, 150), (260, 260)])
    h1 = morfismo(solo_paul, amigos_X; V = [1], A = Int[])
    h2 = morfismo(solo_paul, amigos_Y; V = [1], A = Int[])
    h3 = morfismo(solo_paul, trio; V = [1], A = Int[])
    dos_primeras = pegar(h1, h2)
    pegar(componer(h1, dos_primeras.iX), h3)        # el traslape ya vive en el primer pegado
end

# ╔═╡ 98d3841f-6799-50f1-bb6b-900379fde91d
md"""
## 6.5 Pushouts en AlgebraicJulia

El libro termina el capítulo mostrando cómo se calcula un pushout con la biblioteca profesional AlgebraicJulia. Nuestro `pegar` hace exactamente lo mismo con unas cuantas líneas de Julia puro; despliega el recuadro para comparar.
"""

# ╔═╡ 3504760c-508a-5771-80d4-94db1413538b
plegable("Ver el código de AlgebraicJulia", md"""
```julia
using Catlab
K, X = SymmetricGraph(1), cycle_graph(SymmetricGraph, 3)
Y = path_graph(SymmetricGraph, 2); add_edge!(Y, 2, 2)
f = homomorphism(K, X)
g = ACSetTransformation(K, Y; V = [1])
P = apex(colimit(Span(f, g)))       # el pushout
```
""")

# ╔═╡ 33982fc5-eeeb-5da5-8c58-d3b1e403575e
md"""
## 6.6 Resumen

!!! resumen "Resumen del capítulo 6"
    Las cosas se vuelven complejas rápidamente cuando agregamos relaciones y les pedimos cumplir cada vez más restricciones. Pero plantear las cosas bien, de manera relacional, hace la vida más fácil: los matices se resuelven al principio y no hay que pensar con astucia en casos especiales cuando el sistema crece. El **pushout** se define por un cuadrado conmutativo y una propiedad universal (Definición 6.2), es único salvo isomorfismo (Teorema 6.3) y se calcula objeto por objeto (Proposición 6.4). En el capítulo 7 lo usaremos para «buscar y reemplazar» en gráficas. ¡De aquí en adelante todo es más fácil!
"""

# ╔═╡ d76ec8b1-f33f-5288-a995-a21c152f04de
capitulo(7, "Gráficas que evolucionan";
    libro = "Sigue el capítulo 7 del libro.",
    metas = ["especificar un «buscar y reemplazar» en gráficas con una **regla** *L* ← *K* → *R*;",
             "entender las **condiciones de pegado** y por qué eliminan los casos especiales;",
             "aplicar la **reescritura de doble pushout** (química, videojuegos) y verificar los rompecabezas del libro."])

# ╔═╡ b5b60642-d548-53fe-80d7-bb002a55dee1
md"""
## 7.1 Introducción

«Buscar y reemplazar» es una de las funciones más útiles de un procesador de texto. Pero, recuerda el libro, en el mundo real *encontrar* algo y *reemplazarlo* sin atender a sus conexiones ha causado mucho daño. Un ejemplo sencillo y sin política: **dejar el azúcar**. El plan ingenuo es quitar el azúcar de la vida y ya. Pero el azúcar está **conectado** con otras cosas (con estar contento, por ejemplo); al arrancarla, esas conexiones quedan rotas, el sistema se vuelve inestable y la manera más fácil de estabilizarlo es… regresar al azúcar.

Si queremos cambiar algo, conviene empezar por algo simple. En este capítulo construiremos una manera de modificar gráficas **bien**: sin conexiones rotas (flechas colgantes) y haciendo exactamente los cambios que queremos.

## 7.2 Cómo especificar «buscar y reemplazar»

En un procesador de texto hay dos casillas: *Buscar* y *Reemplazar con*. En una gráfica, las dos se llenan con gráficas: un **patrón** que se busca y su **reemplazo**. Por ejemplo, buscar un vértice con lazo y reemplazarlo por un camino de tres vértices con un lazo en medio, dentro de esta gráfica anfitriona:
"""

# ╔═╡ 7a7b8429-16fa-5fbd-9712-4e956de11394
begin
    buscar_lazo = simetrica(1, [(1, 1)]; pos = [(260, 170)])
    camino_con_lazo = simetrica(3, [(1, 2), (2, 3), (2, 2)]; pos = [(150, 190), (260, 190), (370, 190)])
    anfitriona = simetrica(4, [(1, 2), (1, 3), (3, 4), (3, 3)]; pos = [(170, 60), (360, 60), (170, 220), (360, 220)])
    lado_a_lado(dibujar(buscar_lazo; ancho = 160, alto = 160), dibujar(camino_con_lazo; ancho = 260, alto = 160), dibujar(anfitriona; ancho = 260, alto = 220))
end

# ╔═╡ 4b6bf99f-6030-5789-9fb2-10fff3231856
md"""
El patrón aparece en el vértice 3 de la anfitriona. Pero hay **dos** maneras de reemplazarlo: poner ahí el vértice de en medio del reemplazo *conservando* el lazo (reemplazo 1), o poner ahí el vértice de la izquierda del reemplazo, **borrando** el lazo viejo (reemplazo 2). En un texto solo hay una manera de reemplazar; en una gráfica hay que decir además **cómo se relacionan** el patrón y su reemplazo, es decir, **dónde se traslapan**. ¡Ya sabemos especificar traslapes! Con un span, como en el capítulo 6.

!!! definicion "Definición 7.1 (Regla de reescritura)"
    Una **regla** es un span ``L \xleftarrow{\ l\ } K \xrightarrow{\ r\ } R`` con ``l`` y ``r`` **inyectivos**: ``L`` es lo que se busca, ``R`` el reemplazo y ``K`` lo que comparten. Lo que está en ``L`` pero no viene de ``K`` **se borra**; lo que está en ``R`` pero no viene de ``K`` **se agrega**. Así, ``l`` es la **regla de borrado** y ``r`` la **regla de adición**.

!!! margen "En la literatura"
    Para la teoría basta que ``l`` sea inyectivo; ``r`` puede juntar elementos (lo usaremos en el capítulo 8).

!!! rompecabezas "Rompecabezas 1"
    ¿Cuál es el traslape ``K`` en el reemplazo 1? ¿Y en el reemplazo 2? Piénsalo y compara con el código.
"""

# ╔═╡ 09d91651-5e2b-550c-8d84-542b9bd09dca
begin
    # Reemplazo 1: K = vértice CON lazo; cae en el vértice de en medio del reemplazo (y el lazo se conserva)
    K1 = simetrica(1, [(1, 1)])
    regla_1 = Regla(morfismo(K1, buscar_lazo; V = [1], A = [1, 2]), morfismo(K1, camino_con_lazo; V = [2], A = [5, 6]))
    # Reemplazo 2: K = vértice SIN lazo; cae en el vértice de la izquierda (el lazo viejo se borra)
    K2 = simetrica(1, Tuple{Int,Int}[])
    regla_2 = Regla(morfismo(K2, buscar_lazo; V = [1], A = Int[]), morfismo(K2, camino_con_lazo; V = [1], A = Int[]))
    en_el_3 = coincidencia(buscar_lazo, anfitriona; V = [3], A = [7, 8])
end;

# ╔═╡ aa71057c-e605-5407-8688-d418be27ded3
lado_a_lado(reescribir(regla_1, en_el_3), reescribir(regla_2, en_el_3))

# ╔═╡ a7122288-56f5-5268-9287-30853564128d
md"""
A la izquierda, el reemplazo 1: el vértice 3 conserva su lazo y gana dos vecinos. A la derecha, el reemplazo 2: el lazo viejo desaparece y el vértice 3 queda unido a un camino nuevo con el lazo en medio. Misma búsqueda, mismo reemplazo, distinto traslape: resultados distintos.

### Reemplazar = borrar y luego agregar

Fíjate en lo que pasó: lo que estaba en ``L`` fuera del traslape se **borró** de la anfitriona; lo que está en ``R`` fuera del traslape se **agregó**. El traslape mismo no cambia: es exactamente lo que queda de ``L`` después de borrar.

!!! rompecabezas "Rompecabezas 2"
    Buscar: dos vértices sueltos. Reemplazar con: una arista entre ellos. Anfitriona: dos vértices unidos por **dos** aristas. ¿Qué queda?
"""

# ╔═╡ 3959eca8-79d7-54a0-bb96-05f823fb3250
let
    L, K, R = simetrica(2, Tuple{Int,Int}[]), simetrica(2, Tuple{Int,Int}[]), simetrica(2, [(1, 2)])
    agrega_arista = Regla(morfismo(K, L; V = [1, 2], A = Int[]), morfismo(K, R; V = [1, 2], A = Int[]))
    G = simetrica(2, [(1, 2), (1, 2)]; pos = [(170, 150), (350, 150)])
    reescribir(agrega_arista, coincidencia(L, G; V = [1, 2], A = Int[]))
end

# ╔═╡ bf33ae92-2a30-5fcf-a87e-c179ed2d6457
md"""
Tres aristas paralelas: la regla agrega una arista y no le importa que ya hubiera otras.

!!! rompecabezas "Rompecabezas 3"
    Buscar: tres vértices sueltos, 1, 2 y 3. Traslape: los vértices 1 y 2. Reemplazar con: una arista de 1 a 2. La coincidencia manda 1, 2 y 3 a los vértices con esos números de la anfitriona.
"""

# ╔═╡ 6ce0cd29-bd32-5830-bb04-3eb5177f37ba
let
    L, K, R = simetrica(3, Tuple{Int,Int}[]), simetrica(2, Tuple{Int,Int}[]), simetrica(2, [(1, 2)])
    regla = Regla(morfismo(K, L; V = [1, 2], A = Int[]), morfismo(K, R; V = [1, 2], A = Int[]))
    G = simetrica(4, [(1, 2), (2, 4)]; pos = [(150, 70), (150, 220), (370, 70), (370, 220)])
    reescribir(regla, coincidencia(L, G; V = [1, 2, 3], A = Int[]))
end

# ╔═╡ b69978e4-808b-599e-bab0-1c68a3928afd
md"""
El vértice 3 se borra (está en ``L`` pero no en ``K``) y aparece una segunda arista entre 1 y 2.

!!! clave "Idea clave"
    La interfaz de «buscar y reemplazar» es un span ``L \leftarrow K \rightarrow R``: el morfismo inyectivo ``K \to L`` especifica qué se **borra** y el morfismo inyectivo ``K \to R`` qué se **agrega**.

## 7.3 Encontrar una coincidencia

Un procesador de texto busca coincidencias **exactas** de una cadena. En una gráfica, lo que importa es la **conectividad**: buscamos lugares con la misma conectividad que el patrón. «Misma conectividad» suena a morfismo.

!!! definicion "Definición 7.2 (Coincidencia)"
    Una **coincidencia** (*match*) del patrón ``L`` en la anfitriona ``G`` es un morfismo ``m \colon L \to G``. Puede haber muchas coincidencias, o ninguna, y no tienen que ser inyectivas.

Por ejemplo, dos vértices sueltos tienen **cuatro** coincidencias en dos vértices sueltos: dos inyectivas y dos que mandan ambos vértices al mismo lugar.
"""

# ╔═╡ 7a54c56a-3565-5904-a830-910d8e606f3e
[m.comp[:V] for m in morfismos(simetrica(2, Tuple{Int,Int}[]), simetrica(2, Tuple{Int,Int}[]))]

# ╔═╡ 7e168e42-073d-57c4-be37-ceef85c967bd
md"""
!!! rompecabezas "Rompecabezas 4"
    Encuentra al menos dos coincidencias de un camino de tres vértices en un triángulo. ¿Cuántas hay en total? (El código del libro dice 12: el camino puede empezar en cualquiera de los 3 vértices del ciclo, ir en dos direcciones, y cada arista se puede recorrer en dos sentidos… lo que el libro cuenta como ``3 \times 2 \times 2``.)
"""

# ╔═╡ 680789e9-59c8-5a3a-b25a-caffb117aed4
let
    camino = simetrica(3, [(1, 2), (1, 3)])            # el vértice 1 en medio
    triangulo = simetrica(3, [(1, 2), (2, 3), (3, 1)])
    ms = morfismos(camino, triangulo)
    (; coincidencias = length(ms), inyectivas = count(es_inyectivo, ms))
end

# ╔═╡ 34397ce1-c3b9-5927-9ccd-2ba918e2c2f2
md"""
!!! rigor "Rigor: la cuenta correcta de las 12"
    Son 12, pero la explicación es más sencilla que la del libro: el vértice de en medio del camino puede caer en cualquiera de los 3 vértices del triángulo, y cada una de sus dos aristas en cualquiera de las **2** aristas que tocan ese vértice: ``3 \times 2 \times 2 = 12``. De ellas, 6 son inyectivas (las dos aristas van a aristas distintas) y 6 doblan el camino sobre una sola arista.

## 7.4 Borrar vértices y aristas

### Encontrar una coincidencia para borrar

**Borrar requiere cuidado.** Considera esta regla: buscar un vértice 1 suelto y una arista ``a`` entre 2 y 3; conservar 1 y 3. Se borran el vértice 2 y la arista ``a``. En la anfitriona de abajo, si el vértice 2 cae en un vértice que tiene **otras** aristas, borrarlo las dejaría colgando:
"""

# ╔═╡ a3ef55ad-d9ac-5640-9248-0569b2a7394a
begin
    L_b, K_b = simetrica(3, [(2, 3)]), simetrica(2, Tuple{Int,Int}[])
    borra_punta = Regla(morfismo(K_b, L_b; V = [1, 3], A = Int[]), morfismo(K_b, K_b; V = [1, 2], A = Int[]))
    casa = simetrica(5, [(1, 2), (2, 3), (3, 4), (4, 1), (3, 5)]; pos = [(150, 70), (330, 70), (330, 220), (150, 220), (470, 220)])
    mala = coincidencia(L_b, casa; V = [1, 3, 5], A = [9, 10])     # el 2 cae en el vértice 3 de la casa
    buena = coincidencia(L_b, casa; V = [1, 5, 3], A = [10, 9])    # el 2 cae en la punta 5
    lado_a_lado(reescribir(borra_punta, mala), reescribir(borra_punta, buena))
end

# ╔═╡ eccd5b94-8ca4-50d3-a048-e22a3d7b61d9
md"""
Con la coincidencia mala, el vértice 3 de la casa tiene cuatro aristas; borrarlo dejaría tres colgando. Con la buena, el 2 cae en la punta, cuya única arista es ``a``, y todo queda intacto.

Hay otra situación peligrosa: que la coincidencia mande a un mismo vértice de la anfitriona un vértice que se **borra** y otro que se **conserva**. ¿Qué hacemos con ese vértice: lo borramos o lo dejamos? Las dos respuestas son incorrectas.
"""

# ╔═╡ 46bc43a6-5bad-5cf6-b145-4e8031514f11
reescribir(borra_punta, coincidencia(L_b, simetrica(2, [(1, 2)]); V = [1, 1, 2], A = [1, 2]))

# ╔═╡ e0192187-1093-5131-ae83-ea5c3de9d0c1
md"""
!!! clave "Una buena coincidencia (para borrar)"
    - cumple la **condición de no colgantes**: nada que se conserve apunta a algo que se borra;
    - cumple la **condición de identificación**: no junta lo que se borra con otra cosa.

### Cómo se borra: el complemento del pushout

Tenemos la regla de borrado ``K \to L``, la anfitriona ``G`` y la coincidencia ``m \colon L \to G``. La gráfica que resulta de borrar, llamémosla ``D``, tiene todo lo de ``G`` que está fuera de la coincidencia y, de lo que está dentro, solo lo que viene de ``K``. Así, ``K`` cae dentro de ``D`` y ``D`` dentro de ``G``, y el cuadrado conmuta:
```math
\begin{array}{ccc}
K & \xrightarrow{\ l\ } & L \\[2pt]
\big\downarrow & & \big\downarrow{\scriptstyle m} \\[2pt]
D & \longrightarrow & G
\end{array}
```
¿Te recuerda algo? **La anfitriona es el pushout** de ``L \leftarrow K \rightarrow D``: si pegas lo que borraste (``L``) con lo que quedó (``D``) a lo largo de ``K``, recuperas ``G``.

!!! definicion "Definición 7.3 (Complemento del pushout)"
    Dados ``l \colon K \to L`` y ``m \colon L \to G``, un **complemento del pushout** es un objeto ``D`` con flechas ``k \colon K \to D`` y ``d \colon D \to G`` tales que ``G`` (con ``m`` y ``d``) es el pushout de ``L \xleftarrow{l} K \xrightarrow{k} D``.

*Complemento* quiere decir «lo que completa»: el complemento del pushout completa el cuadrado. El libro lo dice así: *un complemento del pushout es lo que completa al pushout.*

!!! ejemplo "Ejemplo 1"
    Buscar: cuatro vértices sueltos; traslape: los vértices 1 y 2. La anfitriona tiene seis vértices sueltos y la coincidencia es inyectiva. El complemento tiene todo lo que no está en la coincidencia más los vértices 1 y 2: **cuatro** vértices.
"""

# ╔═╡ 59e68a57-29de-5564-a248-665ce604ad5c
begin
    L4, K12 = simetrica(4, Tuple{Int,Int}[]), simetrica(2, Tuple{Int,Int}[])
    l12 = morfismo(K12, L4; V = [1, 2], A = Int[])
    seis = simetrica(6, Tuple{Int,Int}[]; pos = [(120, 80), (260, 80), (120, 200), (260, 200), (400, 80), (400, 200)])
    solo_borra = Regla(l12, identidad(K12))
    ej1 = reescribir(solo_borra, coincidencia(L4, seis; V = [1, 2, 3, 4], A = Int[]))
    ej1.D.tam
end

# ╔═╡ a76ace55-7d79-5ae3-8aaf-5600617d08b7
md"""
!!! rompecabezas "Rompecabezas 5 (como en el libro)"
    Mismo patrón y misma anfitriona, pero ahora la coincidencia **junta**: los vértices 1 y 2 caen en el mismo vértice de la anfitriona, y los vértices 3 y 4 también.
"""

# ╔═╡ 2068a6fd-d411-5bd7-9a79-8a5ee8d57bd0
reescribir(solo_borra, coincidencia(L4, seis; V = [1, 1, 2, 2], A = Int[]))

# ╔═╡ f58fd378-e4a4-57a1-a49c-49a0f3ced396
md"""
!!! rigor "Rigor: el rompecabezas 5 del libro viola la condición de identificación"
    El libro responde que el complemento tiene cinco vértices (la anfitriona menos el vértice donde cayeron 3 y 4). Pero los vértices 3 y 4 **se borran los dos**, y la coincidencia los junta. La condición de identificación del libro («no juntar lo que se borra con lo que se conserva») no prohíbe esto, pero la condición correcta (Teorema 7.4) sí, y con razón: si pegamos ``L`` con esa ``D`` de cinco vértices a lo largo de ``K``, **no** sale la anfitriona.
"""

# ╔═╡ 774d04b4-b1da-554d-bbba-ad75bad5d99e
let
    D_del_libro = simetrica(5, Tuple{Int,Int}[])
    k = morfismo(K12, D_del_libro; V = [1, 1], A = Int[])     # 1 y 2 del traslape caen en el mismo vértice
    P = pegar(l12, k).objeto
    (; vértices_del_pegado = P.tam[:V], vértices_de_la_anfitriona = seis.tam[:V])
end

# ╔═╡ d22fda23-5284-5c1b-ab98-88df410b7c17
md"""
Siete contra seis: en el pegado, los vértices 3 y 4 de ``L`` quedan **separados** (nada los identifica), mientras que en la anfitriona estaban juntos. No existe ningún complemento: el código del libro lo «encuentra» porque llama a `pushout_complement` sin verificar antes las condiciones de pegado.

Si solo se juntan los vértices que se **conservan** (1 y 2) y 3 y 4 caen en vértices distintos, todo está bien:
"""

# ╔═╡ d5a6e1db-b9b8-5375-9c27-8440661f9a68
rp5_bien = reescribir(solo_borra, coincidencia(L4, seis; V = [1, 1, 2, 3], A = Int[]))

# ╔═╡ f76a363e-19f2-5cea-ac5a-aaa22dfe5b3b
md"""
!!! rompecabezas "Rompecabezas 6"
    Buscar: el vértice 1 suelto y una arista ``a`` entre 2 y 3; traslape: 1 y 3. La anfitriona es un camino de seis vértices y la coincidencia manda 1 ↦ 5, 2 ↦ 1, 3 ↦ 2.
"""

# ╔═╡ 74ead1af-c7f3-5370-8391-5cbe1a55f751
begin
    camino6 = simetrica(6, [(1, 2), (2, 3), (3, 4), (4, 5), (5, 6)]; pos = [(50 + 84(k - 1), 150) for k in 1:6])
    m6 = coincidencia(L_b, camino6; V = [5, 1, 2], A = [1, 2])
    rp6 = reescribir(borra_punta, m6)
end

# ╔═╡ 9d4d90ce-a7fb-5036-9998-362685d270d3
md"""
### Las preguntas del millón

!!! pausa "Preguntas del millón (del libro)"
    1. ¿Qué pasa si le damos al procedimiento una coincidencia que viola la condición de no colgantes?
    2. ¿Y una que viola la condición de identificación?

Si el complemento diera resultados malos, esas violaciones serían **casos especiales** que habría que atender fuera del procedimiento, con código extra. La buena noticia es que la **naturaleza universal** de los pushouts garantiza que el complemento existe **solo** para coincidencias adecuadas:

!!! teorema "Teorema 7.4 (Condiciones de pegado)"
    Sean ``l \colon K \to L`` un morfismo inyectivo y ``m \colon L \to G`` un morfismo de instancias. Llamemos **borrados** a los elementos de ``m(L \setminus l(K))`` y **conservados** a los demás elementos de ``G``. Existe un complemento del pushout **si y solo si** ``m`` cumple:
    1. **condición de identificación:** si ``m(x) = m(x')`` con ``x \neq x'``, entonces ``x`` y ``x'`` están ambos en ``l(K)``;
    2. **condición de no colgantes:** los conservados son cerrados bajo todas las flechas del esquema, es decir, si ``y`` se conserva, ``G(h)(y)`` también se conserva para toda flecha ``h``.

    En ese caso el complemento es único salvo isomorfismo: ``D`` son los conservados.

!!! demostracion "Demostración (idea y referencias)"
    Si ``D`` existe, cada elemento de ``G`` viene de ``D`` o de ``L``, y los que vienen de ambos son exactamente las imágenes de ``K``. (Esto usa que en ``\mathcal{C}\text{-}\mathsf{Set}`` un pushout a lo largo de un monomorfismo es también un *pullback*.) Un elemento conservado que apunte a uno borrado, o dos elementos de ``L`` identificados sin estar ambos en ``l(K)``, contradirían que el cuadrado es un pushout (el cálculo objeto por objeto de la Proposición 6.4 lo muestra). Recíprocamente, si se cumplen las dos condiciones, los conservados forman una subinstancia ``D`` y se verifica directamente que el cuadrado es un pushout. El caso de gráficas es clásico: Ehrig, Ehrig, Prange y Taentzer, *Fundamentals of Algebraic Graph Transformation* (Springer, 2006). La versión para cualquier ``\mathcal{C}\text{-}\mathsf{Set}``, la que implementa este cuaderno, está en Brown, Patterson, Hanks y Fairbanks, *Computational category-theoretic rewriting* (2022). La unicidad del complemento cuando ``l`` es mono vale en toda categoría **adhesiva** (Lack y Sobociński, 2005), y ``\mathcal{C}\text{-}\mathsf{Set}`` lo es.

!!! ejemplo "Ejemplos 2 y 3 del libro"
    Buscar una arista ``1 — 2`` conservando solo el vértice 1. En un camino ``1 — 2 — 3`` con el 2 de la regla en el vértice de en medio, el complemento **no existe** (colgante). En un vértice con un lazo, donde 1 y 2 caen en el mismo vértice, tampoco (identificación).
"""

# ╔═╡ ad8a595f-0cf7-52f6-bfc2-77a3c9f2b5d8
begin
    L_e, K_e = simetrica(2, [(1, 2)]), simetrica(1, Tuple{Int,Int}[])
    borra_vecino = Regla(morfismo(K_e, L_e; V = [1], A = Int[]), identidad(K_e))
    lado_a_lado(
        reescribir(borra_vecino, coincidencia(L_e, simetrica(3, [(1, 2), (2, 3)]); V = [1, 2], A = [1, 2])),
        reescribir(borra_vecino, coincidencia(L_e, simetrica(1, [(1, 1)]); V = [1, 1], A = [1, 2])))
end

# ╔═╡ c83f40a3-7c06-5ed2-afb7-073288bee72f
md"""
### Explora todas las coincidencias

La misma regla en un camino de cuatro vértices tiene seis coincidencias. Recórrelas: el procedimiento decide solo cuáles se pueden usar.

**coincidencia número:** $(@bind k_coincidencia deslizador(1:6, default = 1))
"""

# ╔═╡ 149d06a5-e225-546d-b7c4-ca693411cc85
let
    camino4 = simetrica(4, [(1, 2), (2, 3), (3, 4)]; pos = [(80, 150), (200, 150), (320, 150), (440, 150)])
    todas = morfismos(L_e, camino4)
    m = todas[clamp(k_coincidencia, 1, length(todas))]
    juntar(HTML("<div class=\"mini-titulo\">Coincidencia $k_coincidencia de $(length(todas)): el vértice 1 de la regla cae en $(m.comp[:V][1]) y el 2 en $(m.comp[:V][2]).</div>"),
        reescribir(borra_vecino, m))
end

# ╔═╡ fc9641d2-ea1c-50ca-a489-bad2ee521a80
md"""
Solo funcionan las dos coincidencias que mandan el vértice que se borra a una **punta** del camino.

!!! clave "El procedimiento es la barandilla"
    No hay una lista de casos raros que atender uno por uno: el Teorema 7.4 los reduce a **dos** condiciones, y cuando alguna falla es porque el complemento del pushout **no existe**. El código revisa justo esas dos condiciones y nada más. Hicimos el trabajo pesado al principio, pensando relacionalmente; la recompensa es que todo fluye sin intervenciones. Y como la regla de borrado es inyectiva, el complemento, cuando existe, es único.

## 7.5 Agregar vértices y aristas

Ya borramos; ahora agregamos lo que está en ``R`` fuera del traslape. Tenemos ``K \to D`` (del paso anterior) y ``K \to R``. ¿Te suena la forma? Sí: **¡pushouts!** Pegamos ``R`` al complemento a lo largo de ``K`` y el diagrama queda completo:
```math
\begin{array}{ccccc}
L & \xleftarrow{\ l\ } & K & \xrightarrow{\ r\ } & R \\[2pt]
{\scriptstyle m}\big\downarrow & & \big\downarrow & & \big\downarrow \\[2pt]
G & \longleftarrow & D & \longrightarrow & H
\end{array}
```

!!! definicion "Definición 7.5 (Reescritura de doble pushout)"
    Aplicar la regla ``L \xleftarrow{l} K \xrightarrow{r} R`` en la coincidencia ``m \colon L \to G`` es (1) calcular un complemento del pushout ``D`` de ``K \to L \to G`` y (2) calcular el pushout ``H`` de ``D \leftarrow K \rightarrow R``. Como hay dos pushouts, se llama **reescritura de doble pushout** (*double pushout rewriting*, DPO).

El código de las definiciones 7.1 a 7.5 y del Teorema 7.4 cabe en una celda:
"""

# ╔═╡ 91bb3bd7-f38a-5218-bd4b-3c1db3798d41
begin
    "Una regla de reescritura `L ←l─ K ─r→ R` (buscar, conservar, reemplazar), con `l` inyectivo."
    struct Regla
        l::Morfismo   # K → L  (regla de borrado)
        r::Morfismo   # K → R  (regla de adición)
    end

    "Resultado de aplicar una regla: la anfitriona `G`, el complemento `D` y el resultado `H`."
    struct Reescritura
        regla::Regla
        m::Morfismo                            # L → G  (la coincidencia)
        D::Instancia
        H::Instancia
        borrados::Dict{Symbol,Vector{Int}}     # elementos de G que se borran
        de_D::Dict{Symbol,Vector{Int}}         # D → H
        de_R::Dict{Symbol,Vector{Int}}         # R → H
        conservados::Dict{Symbol,Vector{Int}}  # qué elemento de G es cada elemento de D
    end

    "La regla no se puede aplicar: las condiciones de pegado que fallan."
    struct FallaDPO
        problemas::Vector{String}
    end

    "Los elementos de G que se borran: las imágenes de lo que está en L pero no viene de K."
    a_borrar(regla::Regla, m::Morfismo) = Dict{Symbol,Vector{Int}}(
        o => sort(unique([m.comp[o][x] for x in 1:m.dom.tam[o] if !(x in regla.l.comp[o])])) for o in m.dom.esquema.objetos)

    "Las dos condiciones de pegado del Teorema 7.4 (identificación y no colgantes)."
    function condiciones_de_pegado(regla::Regla, m::Morfismo)
        L, G, S = m.dom, m.cod, m.dom.esquema
        problemas = String[]
        borrar = a_borrar(regla, m)
        for o in S.objetos, x in 1:L.tam[o], x2 in x+1:L.tam[o]     # identificación
            if m.comp[o][x] == m.comp[o][x2] && !(x in regla.l.comp[o] && x2 in regla.l.comp[o])
                push!(problemas, "Identificación: los elementos $x y $x2 de $o en L caen en el mismo elemento de G, y no ambos se conservan.")
            end
        end
        for f in S.flechas, y in 1:G.tam[f.dom]                    # no colgantes
            if !(y in borrar[f.dom]) && G.fun[f.nombre][y] in borrar[f.cod]
                push!(problemas, "Colgante: `$(f.nombre)` lleva el elemento $y de $(f.dom), que se conserva, al elemento $(G.fun[f.nombre][y]) de $(f.cod), que se borra.")
            end
        end
        problemas
    end

    """
        reescribir(regla, m)

    Doble pushout. (1) Si se cumplen las condiciones de pegado, el complemento del pushout
    `D` es «G menos lo que se borra»; (2) el resultado es el pushout `H` de `D ← K → R`.
    Si las condiciones fallan devuelve `FallaDPO`: el complemento NO existe.
    """
    function reescribir(regla::Regla, m::Morfismo)
        # Hipótesis del Teorema 7.4: l es un monomorfismo y m es de verdad un morfismo.
        es_inyectivo(regla.l) || error("La regla de borrado l : K → L debe ser inyectiva (Definición 7.1).")
        es_morfismo(m) || error("La coincidencia no es un morfismo: " * join(fallas_naturalidad(m), " "))
        problemas = condiciones_de_pegado(regla, m)
        isempty(problemas) || return FallaDPO(problemas)
        G, S, K = m.cod, m.cod.esquema, regla.l.dom
        borrar = a_borrar(regla, m)
        quedan = Dict{Symbol,Vector{Int}}(o => [y for y in 1:G.tam[o] if !(y in borrar[o])] for o in S.objetos)
        nuevo = Dict{Symbol,Dict{Int,Int}}(o => Dict(y => i for (i, y) in enumerate(quedan[o])) for o in S.objetos)
        D = Instancia(S, Dict(o => length(quedan[o]) for o in S.objetos),
            Dict(f.nombre => [nuevo[f.cod][G.fun[f.nombre][y]] for y in quedan[f.dom]] for f in S.flechas),
            es_grafica(G) ? posiciones_de(G)[quedan[:V]] : Tuple{Float64,Float64}[],
            (es_grafica(G) && length(G.nombres) == G.tam[:V]) ? G.nombres[quedan[:V]] : String[])
        k = Morfismo(K, D, Dict(o => [nuevo[o][m.comp[o][regla.l.comp[o][i]]] for i in 1:K.tam[o]] for o in S.objetos))
        po = pegar(k, regla.r)                                     # el segundo pushout
        H = colocar_resultado(po, D)
        Reescritura(regla, m, D, H, borrar, po.iX.comp, po.iY.comp, quedan)
    end

    "Una coincidencia (match) explícita de L en G, dada por sus componentes."
    coincidencia(L::Instancia, G::Instancia; comps...) = morfismo(L, G; comps...)
end;

# ╔═╡ f84039b3-a818-5ac2-8337-4f0643f734a6
md"""
!!! ejemplo "Ejemplo 1 (continuación)"
    La regla de adición del ejemplo 1 tiene una arista entre 1 y 2. Como esa arista no está en el traslape, se agrega al complemento. Este es el diagrama completo de la reescritura:
"""

# ╔═╡ 58464072-0f72-5827-9fc7-4548411816cd
begin
    regla_ej1 = Regla(l12, morfismo(K12, simetrica(2, [(1, 2)]); V = [1, 2], A = Int[]))
    ej1_completo = reescribir(regla_ej1, coincidencia(L4, seis; V = [1, 2, 3, 4], A = Int[]))
    figura(diagrama_dpo(ej1_completo), "7.1", "La reescritura de doble pushout del ejemplo 1: arriba la regla *L* ← *K* → *R*; abajo, la anfitriona *G*, el complemento *D* y el resultado *H*.")
end

# ╔═╡ 998c0dd9-fe8f-58c7-a43c-f84ee92caf45
md"""
!!! rompecabezas "Rompecabezas 7 (continuación del 5)"
    Con la versión correcta del rompecabezas 5 (1 y 2 juntos, 3 y 4 separados), agrega una arista entre 1 y 2. Como 1 y 2 cayeron en el mismo vértice, la arista nueva aparece como un **lazo**.

!!! rompecabezas "Rompecabezas 8 (continuación del 6)"
    En el rompecabezas 6 agrega una arista entre los vértices 1 y 3 del traslape (que cayeron en 5 y 2).
"""

# ╔═╡ 0abc5661-b86c-5b1f-abfb-16a4f9f51644
let
    agrega(K) = morfismo(K, simetrica(2, [(1, 2)]); V = [1, 2], A = Int[])
    rp7 = reescribir(Regla(l12, agrega(K12)), coincidencia(L4, seis; V = [1, 1, 2, 3], A = Int[]))
    rp8 = reescribir(Regla(borra_punta.l, agrega(K_b)), m6)
    lado_a_lado(rp7, rp8)
end

# ╔═╡ 3bd21b02-1eeb-51cd-b467-3c293272ec46
md"""
En el rompecabezas 8, el camino ``1 — 2 — \cdots — 6`` pierde su punta 1 y gana la arista ``5 — 2``: queda un ciclo ``2 — 3 — 4 — 5`` con la punta 6 colgando de 5.

!!! clave "La máquina de buscar y reemplazar"
    Un patrón encontrado en una gráfica se transforma en otro calculando un **complemento del pushout** (borrar) y después un **pushout** (agregar). ¡Una belleza!

## 7.6 Algunos usos de buscar y reemplazar en gráficas

### Química

En química, las **reacciones clic** rinden mucho, piden poco y producen subproductos inofensivos. Una de las más útiles es la **reacción de Diels–Alder** (Nobel de Química de 1950 para Otto Diels y Kurt Alder): un dieno (cuatro carbonos con dos dobles enlaces alternados) y un dienófilo (un doble enlace) forman un anillo de seis carbonos. Si los átomos son vértices y los enlaces aristas (un doble enlace son **dos** aristas paralelas), la reacción es una regla DPO: se conservan los seis carbonos y los enlaces sencillos; de cada uno de los tres dobles enlaces se borra una arista (se rompen los tres enlaces π), y se agregan los dos enlaces sencillos que cierran el anillo y una segunda arista entre los carbonos 2 y 3, que se vuelven doble enlace. Aplicada al isopreno (un dieno con un grupo metilo en el carbono 2, el vértice 7) y al eteno:
"""

# ╔═╡ 88210300-8e1b-564b-8cbd-909b975164a6
begin
    hexa(k) = (260 + 85cos(π * (150 - 60(k - 1)) / 180), 165 - 85sin(π * (150 - 60(k - 1)) / 180))
    # carbonos 1–4: el dieno; 5–6: el dienófilo; 7: el metilo del isopreno (unido al 2)
    reactivos = simetrica(7, [(1, 2), (1, 2), (2, 3), (3, 4), (3, 4), (5, 6), (5, 6), (2, 7)];
        pos = vcat([hexa(k) for k in 1:6], [(105.0, 225.0)]))
    L_da = simetrica(6, [(1, 2), (1, 2), (2, 3), (3, 4), (3, 4), (5, 6), (5, 6)])
    K_da = simetrica(6, [(1, 2), (2, 3), (3, 4), (5, 6)])
    R_da = simetrica(6, [(1, 2), (2, 3), (3, 4), (5, 6), (2, 3), (4, 5), (6, 1)])
    flechas_de(aristas) = vcat([[2j - 1, 2j] for j in aristas]...)   # arista j ↦ sus dos flechas
    diels_alder = Regla(morfismo(K_da, L_da; V = 1:6, A = flechas_de([1, 3, 4, 6])),
                        morfismo(K_da, R_da; V = 1:6, A = flechas_de([1, 2, 3, 4])))
    producto = reescribir(diels_alder, coincidencia(L_da, reactivos; V = 1:6, A = 1:14))
end

# ╔═╡ 07ad9969-f61f-5bf8-932b-8d331c3e9db7
md"""
El resultado es el **1-metilciclohexeno**: un anillo de seis carbonos con un doble enlace entre 2 y 3, y el metilo, que estaba fuera de la coincidencia, intacto sobre un carbono del doble enlace.

### Diseño de videojuegos

Bob diseña niveles de un juego de calabozos. Su editor guarda el plano como una gráfica dirigida: los cuartos son vértices y hay una flecha cuando el jugador puede pasar de un cuarto a otro. Bob tiene el cuarto 1 con acceso directo al cuarto 2, y se le ocurre: *¿y si pongo un pasillo entre los dos?* Es una regla que **subdivide** una flecha:
"""

# ╔═╡ 0903082f-957a-5603-8f00-a2bca4989bb3
begin
    L_p, K_p = grafica(2, [1], [2]), grafica(2, Int[], Int[])
    R_p = grafica(3, [1, 3], [3, 2])
    poner_pasillo = Regla(morfismo(K_p, L_p; V = [1, 2], A = Int[]), morfismo(K_p, R_p; V = [1, 2], A = Int[]))
    calabozo = grafica(3, [1, 2, 3], [2, 3, 1]; nombres = ["Cuarto 1", "Cuarto 2", "Tesoro"], pos = [(130, 220), (390, 220), (260, 60)])
    reescribir(poner_pasillo, coincidencia(L_p, calabozo; V = [1, 2], A = [1]))
end

# ╔═╡ 746ce55c-e43b-545e-889b-5bc332814b1a
md"""
Si Bob aplica la regla a **todas** las flechas, ronda tras ronda, cada ronda duplica las flechas y el calabozo crece sin que jamás aparezca una flecha colgante.

**rondas:** $(@bind rondas deslizador(0:3, default = 2))
"""

# ╔═╡ 0bfdb110-00fb-5e44-9d0e-47a1c877e629
let
    G = grafica(3, [1, 2, 3], [2, 3, 1])
    for _ in 1:rondas, _ in 1:G.tam[:A]
        # la flecha 1 siempre es una de las originales: las nuevas quedan al final
        m = coincidencia(L_p, G; V = [G.fun[:src][1], G.fun[:tgt][1]], A = [1])
        G = reescribir(poner_pasillo, m).H
    end
    lado_a_lado(dibujar(G), Markdown.parse("**$(G.tam[:V]) cuartos** y **$(G.tam[:A]) flechas**; ¿es una gráfica válida? `$(es_valida(G))`."))
end

# ╔═╡ 9bf32df4-b935-5c64-9b12-c928e4e4784c
md"""
## 7.7 Buscar y reemplazar en AlgebraicJulia

En AlgebraicJulia una regla es un tramo ``L \leftarrow K \rightarrow R`` y `rewrite_match` aplica el doble pushout. Nuestro `reescribir` sigue los mismos pasos (condiciones de pegado, complemento, pushout); despliega el recuadro para ver la versión del libro.
"""

# ╔═╡ eb047405-25c5-5351-bb78-d40c7cfc499d
plegable("Ver el código de AlgebraicJulia", md"""
```julia
using Catlab, AlgebraicRewriting
regla = Rule(l, r)                          # l : K → L,  r : K → R
can_pushout_complement(l, m)                # ¿se cumplen las condiciones de pegado?
gluing_conditions(ComposablePair(l, m))     # cuáles fallan
H = rewrite_match(regla, m)                 # la reescritura; `nothing` si no hay complemento
```
""")

# ╔═╡ a3b3b246-9a98-5789-9594-f2edfb7dca81
md"""
## 7.8 Pensar relacionalmente es difícil, pero vale la pena

**El pensamiento relacional cambia el vocabulario.** «Buscar y reemplazar» es una idea burda: no sabe del contexto. Un procesador de texto te deja cambiar «verdad» por «mentira» en todo un documento. Las matemáticas que usamos dicen que no se trata de *reemplazar* sino de **integrar** con cuidado un patrón nuevo en el lugar de uno viejo.

!!! clave "Lema del libro"
    Reemplaza «reemplazar» por «integrar».

**El orden de los procesos.** Primero borramos y después agregamos. En un mundo libre podríamos agregar primero y borrar después, pero tendríamos que cuidar accidentes como borrar lo que acabamos de agregar. Borrar primero es más limpio, y el doble pushout lo hace **solo**: la matemática «sabe» que primero va el complemento y después el pushout.

!!! clave "Lema del libro"
    Piensa relacionalmente para acertar a la primera.

## 7.9 Resumen

!!! resumen "Resumen del capítulo 7"
    Para modificar una gráfica calculamos primero un **complemento del pushout** (borrar) y después un **pushout** (agregar): la reescritura de doble pushout (Definición 7.5). Los casos especiales que aparecerían al borrar se resuelven solos gracias a la naturaleza universal de los pushouts: el complemento existe exactamente cuando se cumplen las condiciones de pegado (Teorema 7.4). Los ejemplos y rompecabezas del libro se inspiran en materiales de Georg Fischer y Hannah Gschwentner, y de Mark Gritter.
"""

# ╔═╡ 4ad2b31d-c238-5d2e-80f3-ba37cd3f3efe
capitulo(8, "Una mirada más allá: modelos del mundo que evolucionan";
    libro = "Sigue el capítulo 8 del libro.",
    metas = ["extender esquemas más allá de las gráficas (caras de un cubo, objetos de una cocina);",
             "abrir una caja con una regla de doble pushout y medir el cambio con la **característica de Euler**;",
             "descubrir qué puede y qué no puede hacer una regla que **identifica** elementos."])

# ╔═╡ f92cc18c-4050-53a2-a3bf-b5e0c653d880
md"""
## 8.1 Introducción

Con los **esquemas** empaquetamos los datos de una gráfica; con la **reescritura de doble pushout** los editamos. ¿Podemos modelar cosas que no son gráficas, como las piezas de un coche o los objetos de una cocina? Con gráficas haríamos mucha contabilidad mental: una arista entre un refresco de cola y el refrigerador significaría «está dentro de», pero una arista entre el refresco y unas pastillas de menta significaría «nunca los juntes» (si echas mentas al refresco, explota). Cada arista significaría otra cosa. Por suerte, todo lo que aprendimos funciona para **cualquier** esquema.

## 8.2 La configuración de un cubo

Extendamos el esquema de gráficas con un concepto nuevo: **caras**. Una cara de un cubo tiene cuatro aristas: la de arriba, la de la derecha, la de abajo y la de la izquierda.
"""

# ╔═╡ 4378c5d6-3b5a-5dcf-b959-681eaf1712cf
CUBO = Esquema("cajas", [:Cara, :Arista, :Vertice],
    [Flecha(:arriba, :Cara, :Arista), Flecha(:derecha, :Cara, :Arista), Flecha(:abajo, :Cara, :Arista),
     Flecha(:izquierda, :Cara, :Arista), Flecha(:src, :Arista, :Vertice), Flecha(:tgt, :Arista, :Vertice)], Ecuacion[])

# ╔═╡ 7c30704b-34c8-5b21-abd5-a4dec678a5e2
md"""
El esquema `CUBO` *extiende* al de gráficas: si olvidas las caras, te queda una gráfica (sus aristas y vértices). Una caja cerrada para un pastel de cumpleaños tiene seis caras ``f_1, \dots, f_6`` (la tapa ``f_1``, cuatro paredes ``f_2, \dots, f_5`` y el fondo ``f_6``), doce aristas y ocho vértices. El libro la describe con ecuaciones, como ``\operatorname{arriba}(f_1) = \operatorname{arriba}(f_5)`` (la arista de arriba de la tapa es la de arriba de la pared 5) o ``\operatorname{tgt}(\operatorname{arriba}(f_1)) = \operatorname{src}(\operatorname{derecha}(f_1))``. Resolviendo esas 28 ecuaciones con unión-búsqueda (pegando, ¡otra vez!) se obtienen estos datos, y Julia comprueba que cumplen **todas** las ecuaciones del libro:
"""

# ╔═╡ 0f07d7fd-b88b-5921-9cd9-fab29777aa2b
begin
    caja_cerrada = instancia(CUBO; Cara = 6, Arista = 12, Vertice = 8,
        arriba = [1, 2, 3, 4, 1, 12], derecha = [2, 5, 7, 9, 11, 6], abajo = [3, 6, 8, 10, 12, 8], izquierda = [4, 7, 9, 11, 5, 10],
        src = [1, 2, 3, 4, 2, 5, 3, 6, 4, 7, 1, 8], tgt = [2, 3, 4, 1, 5, 6, 6, 7, 7, 8, 8, 5])
    # Las 28 ecuaciones del libro: (camino, cara) = (camino, cara)
    ecuaciones_libro = [
        ([:arriba], 1) => ([:arriba], 5), ([:derecha], 1) => ([:arriba], 2), ([:abajo], 1) => ([:arriba], 3), ([:izquierda], 1) => ([:arriba], 4),
        ([:izquierda], 2) => ([:derecha], 3), ([:izquierda], 3) => ([:derecha], 4), ([:izquierda], 4) => ([:derecha], 5), ([:izquierda], 5) => ([:derecha], 2),
        ([:arriba], 6) => ([:abajo], 5), ([:derecha], 6) => ([:abajo], 2), ([:abajo], 6) => ([:abajo], 3), ([:izquierda], 6) => ([:abajo], 4),
        ([:arriba, :tgt], 1) => ([:derecha, :src], 1), ([:arriba, :tgt], 1) => ([:derecha, :src], 2),
        ([:derecha, :tgt], 1) => ([:abajo, :src], 1), ([:derecha, :tgt], 1) => ([:derecha, :src], 3),
        ([:abajo, :tgt], 1) => ([:izquierda, :src], 1), ([:abajo, :tgt], 1) => ([:derecha, :src], 4),
        ([:izquierda, :tgt], 1) => ([:arriba, :src], 1), ([:izquierda, :tgt], 1) => ([:derecha, :src], 5),
        ([:arriba, :tgt], 6) => ([:derecha, :src], 6), ([:arriba, :tgt], 6) => ([:derecha, :tgt], 2),
        ([:derecha, :tgt], 6) => ([:abajo, :src], 6), ([:derecha, :tgt], 6) => ([:derecha, :tgt], 3),
        ([:abajo, :tgt], 6) => ([:izquierda, :src], 6), ([:abajo, :tgt], 6) => ([:derecha, :tgt], 4),
        ([:izquierda, :tgt], 6) => ([:arriba, :src], 6), ([:izquierda, :tgt], 6) => ([:derecha, :tgt], 5)]
    fallas = count(e -> aplicar(caja_cerrada, e.first[1], e.first[2]) != aplicar(caja_cerrada, e.second[1], e.second[2]), ecuaciones_libro)
    Comprobacion("la caja cerrada es una instancia de `CUBO` y cumple las ecuaciones del libro",
        [("cada mapa es una función (no hay aristas ni vértices colgantes)", 6, length(errores(caja_cerrada))),
         ("las ecuaciones del libro se cumplen", length(ecuaciones_libro), fallas)])
end

# ╔═╡ d60f2264-637f-5fb6-9a4c-521628d87c25
md"""
!!! observacion "Observación 8.1 (Característica de Euler)"
    Para una superficie hecha de caras, aristas y vértices, el número ``\chi = V - A + C`` (vértices menos aristas más caras) es la **característica de Euler**. No depende de cómo se divida la superficie en caras, sino de su forma: para la superficie de un cubo (una esfera deformada) vale ``8 - 12 + 6 = 2``. Es un ejemplo de algo que se calcula con **solo contar** los datos de una instancia.
"""

# ╔═╡ 86c57d8e-bcad-5854-ace1-5693c8274c7a
"La característica de Euler V − A + C de una instancia de `CUBO`."
χ(X) = X.tam[:Vertice] - X.tam[:Arista] + X.tam[:Cara];

# ╔═╡ 2270f5dc-5c33-5f20-a1bf-d56348893830
χ(caja_cerrada)

# ╔═╡ b07627fb-fbd1-5fdd-b7de-20945233e340
md"""
### Abrir la caja

Entregamos el pastel y hay que abrir la caja. Lo modelamos con una regla de doble pushout que **busca** la tapa (con sus cuatro paredes, para reconocerla), **borra** la cara de la tapa y **agrega** una tapa nueva unida al resto por **una sola** arista, la bisagra, con tres aristas y dos vértices nuevos para sus bordes libres.
"""

# ╔═╡ e6b8be29-e122-5450-8fb0-8e816b554201
figura(caja_animada(), "8.1", "La tapa (cara 1) gira sobre su bisagra. En los datos, la cara vieja se borra y se pega una nueva que comparte con la caja solo la arista de la bisagra.")

# ╔═╡ 6ed7fee1-db51-5eb8-83d8-67bfd6f0e12e
begin
    sin_fondo(X, caras) = instancia(CUBO; Cara = length(caras), Arista = 12, Vertice = 8,
        arriba = X.fun[:arriba][caras], derecha = X.fun[:derecha][caras], abajo = X.fun[:abajo][caras],
        izquierda = X.fun[:izquierda][caras], src = X.fun[:src], tgt = X.fun[:tgt])
    L_tapa = sin_fondo(caja_cerrada, 1:5)          # tapa + cuatro paredes (todo menos el fondo)
    K_tapa = sin_fondo(caja_cerrada, 2:5)          # las cuatro paredes
    # R: las paredes, más una tapa nueva cuya arista de arriba es la bisagra 4 (= izquierda de la tapa vieja),
    # tres aristas nuevas (13, 14, 15) y dos vértices nuevos (9, 10)
    R_tapa = instancia(CUBO; Cara = 5, Arista = 15, Vertice = 10,
        arriba = [2, 3, 4, 1, 4], derecha = [5, 7, 9, 11, 13], abajo = [6, 8, 10, 12, 14], izquierda = [7, 9, 11, 5, 15],
        src = vcat(caja_cerrada.fun[:src], [1, 9, 10]), tgt = vcat(caja_cerrada.fun[:tgt], [9, 10, 4]))
    abrir_caja = Regla(morfismo(K_tapa, L_tapa; Cara = 2:5, Arista = 1:12, Vertice = 1:8),
                       morfismo(K_tapa, R_tapa; Cara = 1:4, Arista = 1:12, Vertice = 1:8))
    coincidencias_tapa = morfismos(L_tapa, caja_cerrada)
    caja_abierta = reescribir(abrir_caja, only(coincidencias_tapa))
end

# ╔═╡ e3e45db4-9e65-564b-9ca4-327626d6f0a4
md"""
La búsqueda encontró **exactamente una** coincidencia: la regla reconoce la tapa por la orientación de sus aristas (cuál es la de arriba, cuál la de la derecha…). Por eso, dice el libro, *la caja nunca se abre por abajo*: el fondo ``f_6`` no tiene paredes cuyas aristas de arriba sean las suyas. ¿Y la característica de Euler?
"""

# ╔═╡ 82f57dab-1bcd-5a5b-a141-cce3f229293b
(; antes = χ(caja_cerrada), después = χ(caja_abierta.H), coincidencias = length(coincidencias_tapa))

# ╔═╡ f89b585d-b51d-519b-b759-9f4c72325d1c
md"""
De ``2`` a ``1``: la caja abierta, con su tapa colgando de la bisagra, es (topológicamente) un **disco**, y la característica de Euler de un disco es ``1``. La regla cambió la forma de la superficie, y un simple conteo de los datos lo detecta: pura topología, calculada con Julia.

## 8.3 Trabajar en una cocina

Las mismas herramientas sirven para describir **dónde están las cosas** en una cocina. El esquema del libro tiene **entidades**, **comidas** y **utensilios**; cada comida y cada utensilio *es* una entidad y *está sobre* una entidad; una rebanada de pan y un queso *son* comidas, un plato *es* un utensilio y el mostrador *es* una entidad.
"""

# ╔═╡ 51994fb1-81f5-58b8-9c4b-7600a30eb466
begin
    COCINA = Esquema("cocinas", [:Entidad, :Comida, :Utensilio, :Mostrador, :Rebanada, :Queso, :Plato],
        [Flecha(:comida_sobre, :Comida, :Entidad), Flecha(:comida_es, :Comida, :Entidad),
         Flecha(:utensilio_sobre, :Utensilio, :Entidad), Flecha(:utensilio_es, :Utensilio, :Entidad),
         Flecha(:mostrador_es, :Mostrador, :Entidad), Flecha(:rebanada_es, :Rebanada, :Comida),
         Flecha(:queso_es, :Queso, :Comida), Flecha(:plato_es, :Plato, :Utensilio)], Ecuacion[])
    vacios = (Utensilio = 0, Mostrador = 0, Plato = 0, utensilio_sobre = Int[], utensilio_es = Int[], mostrador_es = Int[], plato_es = Int[])
    # Entidades: 1 el mostrador, 2 el plato, 3 y 4 las rebanadas, 5 el queso. Todo está sobre el mostrador.
    cocina = instancia(COCINA; Entidad = 5, Comida = 3, Utensilio = 1, Mostrador = 1, Rebanada = 2, Queso = 1, Plato = 1,
        comida_sobre = [1, 1, 1], comida_es = [3, 4, 5], utensilio_sobre = [1], utensilio_es = [2],
        mostrador_es = [1], rebanada_es = [1, 2], queso_es = [3], plato_es = [1])
    describir_cocina(cocina)
end

# ╔═╡ 759dd431-70fd-54fb-82f1-1210bd1c56cd
md"""
!!! margen "Detalle"
    Escribimos `vacios` para no repetir las partes vacías en las reglas que solo hablan de comida.

### Poner queso sobre el pan

La regla del libro busca un queso y una rebanada (cada uno con su comida y sus entidades) y, en el reemplazo, **identifica** la comida del queso con la de la rebanada: se vuelven una sola cosa, un sándwich. Aquí el morfismo ``r \colon K \to R`` **no es inyectivo**: junta elementos.
"""

# ╔═╡ 9afab407-d72e-5d36-b451-db85341a2390
begin
    # L = K: un queso q y una rebanada s; sus comidas 1 y 2; entidades: 1 = es(q), 2 = sobre(q), 3 = es(s), 4 = sobre(s)
    L_q = instancia(COCINA; Entidad = 4, Comida = 2, Rebanada = 1, Queso = 1, comida_sobre = [2, 4], comida_es = [1, 3],
        rebanada_es = [2], queso_es = [1], vacios...)
    R_q = instancia(COCINA; Entidad = 2, Comida = 1, Rebanada = 1, Queso = 1, comida_sobre = [2], comida_es = [1],
        rebanada_es = [1], queso_es = [1], vacios...)
    poner_queso = Regla(identidad(L_q),
        morfismo(L_q, R_q; Entidad = [1, 2, 1, 2], Comida = [1, 1], Rebanada = [1], Queso = [1], Utensilio = Int[], Mostrador = Int[], Plato = Int[]))
    m_queso = coincidencia(L_q, cocina; Entidad = [5, 1, 3, 1], Comida = [3, 1], Rebanada = [1], Queso = [1], Utensilio = Int[], Mostrador = Int[], Plato = Int[])
    describir_cocina(reescribir(poner_queso, m_queso).H)
end

# ╔═╡ 10a9af67-55ed-5eec-8c75-d11033c41ba0
md"""
Elegir «fundir» el queso con el pan es una decisión de modelado: también podríamos haber agregado una relación «está sobre». Eso muestra la flexibilidad de las reglas.

### Poner la rebanada en el plato

El libro propone una regla parecida: identificar la entidad sobre la que está la rebanada con la entidad del plato. Veamos qué pasa en nuestra cocina, donde la rebanada 2 está sobre el mostrador:
"""

# ╔═╡ 0dde6cc9-9f5d-53d6-963b-9e0a30d99ca6
begin
    # L: rebanada s con su comida; entidades 1 = es(comida), 2 = sobre(comida), 3 = es(plato), 4 = sobre(plato)
    L_pl = instancia(COCINA; Entidad = 4, Comida = 1, Utensilio = 1, Mostrador = 0, Rebanada = 1, Queso = 0, Plato = 1,
        comida_sobre = [2], comida_es = [1], utensilio_sobre = [4], utensilio_es = [3], mostrador_es = Int[],
        rebanada_es = [1], queso_es = Int[], plato_es = [1])
    R_pl = instancia(COCINA; Entidad = 3, Comida = 1, Utensilio = 1, Mostrador = 0, Rebanada = 1, Queso = 0, Plato = 1,
        comida_sobre = [2], comida_es = [1], utensilio_sobre = [3], utensilio_es = [2], mostrador_es = Int[],
        rebanada_es = [1], queso_es = Int[], plato_es = [1])
    plato_libro = Regla(identidad(L_pl),
        morfismo(L_pl, R_pl; Entidad = [1, 2, 2, 3], Comida = [1], Utensilio = [1], Mostrador = Int[], Rebanada = [1], Queso = Int[], Plato = [1]))
    m_plato = coincidencia(L_pl, cocina; Entidad = [4, 1, 2, 1], Comida = [2], Utensilio = [1], Mostrador = Int[], Rebanada = [2], Queso = Int[], Plato = [1])
    describir_cocina(reescribir(plato_libro, m_plato).H)
end

# ╔═╡ 94a091d5-d3e3-5d8f-b89d-ca539b562d36
md"""
!!! rigor "Rigor: identificar no es mover"
    ¡El mostrador y el plato se volvieron **la misma entidad**! En una instancia, «estar sobre» es una **función**: cada comida está sobre exactamente una entidad. Una regla que solo *identifica* elementos no puede cambiar el valor de una función; lo que hace es **juntar** el valor viejo (el mostrador) con el nuevo (el plato). Para *mover* la rebanada hay que **borrarla y volver a crearla** sobre el plato: la regla correcta borra la rebanada y su comida, y agrega una rebanada nueva cuya comida está sobre la entidad del plato.
"""

# ╔═╡ 22d621c1-99d9-5c8d-9242-994e33e21c88
begin
    # K: solo el plato, sus entidades y la entidad donde estaba la rebanada (no se borra el mostrador)
    K_m = instancia(COCINA; Entidad = 3, Comida = 0, Utensilio = 1, Mostrador = 0, Rebanada = 0, Queso = 0, Plato = 1,
        comida_sobre = Int[], comida_es = Int[], utensilio_sobre = [3], utensilio_es = [2], mostrador_es = Int[],
        rebanada_es = Int[], queso_es = Int[], plato_es = [1])
    # R: lo mismo, más una rebanada nueva con su comida y su entidad 4, sobre la entidad del plato (2)
    R_m = instancia(COCINA; Entidad = 4, Comida = 1, Utensilio = 1, Mostrador = 0, Rebanada = 1, Queso = 0, Plato = 1,
        comida_sobre = [2], comida_es = [4], utensilio_sobre = [3], utensilio_es = [2], mostrador_es = Int[],
        rebanada_es = [1], queso_es = Int[], plato_es = [1])
    sin_partes(; kw...) = (Comida = Int[], Mostrador = Int[], Rebanada = Int[], Queso = Int[], kw...)
    mover_al_plato = Regla(morfismo(K_m, L_pl; sin_partes(Entidad = [2, 3, 4], Utensilio = [1], Plato = [1])...),
                           morfismo(K_m, R_m; sin_partes(Entidad = [1, 2, 3], Utensilio = [1], Plato = [1])...))
    describir_cocina(reescribir(mover_al_plato, m_plato).H)
end

# ╔═╡ 603e578f-c3ea-557d-8540-5540d9c402fe
md"""
Ahora sí: el mostrador sigue siendo el mostrador, el plato sigue siendo el plato y una rebanada está sobre el plato.

!!! pausa "Pausa para pensar (del libro)"
    ¿Cómo se ve el cuadrado de doble pushout de esta regla? Dibuja ``L``, ``K`` y ``R``, y debajo la cocina antes, el complemento y la cocina después.

Las reglas actualizan lo que sabemos del mundo **explícitamente** (lo que la regla dice) e **implícitamente** (todo lo demás se acomoda solo). En robótica y planeación con inteligencia artificial, llevar la cuenta de los efectos explícitos e implícitos de una acción se llama el **problema del marco** (*frame problem*); la reescritura de doble pushout da una respuesta elegante a una parte del problema: todo lo que la coincidencia no toca se conserva **automáticamente**, sin escribir una sola regla para ello.

## 8.4 Resumen

!!! resumen "Resumen del capítulo 8"
    Los esquemas y la reescritura de doble pushout modelan transformaciones en contextos muy distintos: la configuración de una caja (donde la característica de Euler detectó el cambio de forma) y el arreglo de una cocina (donde aprendimos que identificar no es mover). El libro termina recomendando *The Joy of Abstraction* de Eugenia Cheng, y los foros *Category Theory Zulip* y *localcharts*.
"""

# ╔═╡ 174ca263-4ddf-54de-a27c-3467550cbfaa
capitulo(9, "Nivel tesis: componer sistemas dinámicos";
    libro = "Va más allá del libro: sigue el capítulo 3 de la tesis de Sophie Libkind, *Composition and Computation in Dynamical Systems* (Stanford, 2023).",
    metas = ["distinguir composición **dirigida** y **no dirigida**;",
             "definir un **sistema abierto** y un **diagrama de cableado** como cospan;",
             "componer Lotka–Volterra con piezas y **comprobar** la funtorialidad y la naturalidad del método de Euler."])

# ╔═╡ 5c9f3f76-5ed4-5fea-9336-8f9cd6716c10
md"""
## 9.1 Dos estilos de composición

La tesis estudia sistemas dinámicos **abiertos**: sistemas que pueden interactuar con otros. Kiki y Bouba (capítulo 2) eran de este tipo: el ánimo de cada uno entraba al sistema del otro. La tesis distingue dos estilos:

| | **Dirigido** (máquinas) | **No dirigido** (comparten recursos) |
|:--|:--|:--|
| comunicación | del emisor al receptor, en un solo sentido | todos afectan y son afectados por un recurso común |
| ejemplo | Kiki le transmite su ánimo a Bouba | hablar: todos mueven el mismo aire |
| sintaxis | diagramas de cableado **dirigidos** | diagramas de cableado **no dirigidos** |

Aquí nos concentramos en el estilo no dirigido, porque su matemática es justo la del capítulo 6: **pegar**. La idea de modelado: en lugar de escribir de golpe las ecuaciones de un ecosistema, escribimos **piezas pequeñas** (los conejos crecen, los zorros cazan conejos, los zorros mueren) y un **diagrama** que dice qué variables comparten. El sistema completo se obtiene **componiendo**. Si cambias una pieza, cambias una pieza; el resto queda igual.

## 9.2 Sistemas abiertos y diagramas

!!! definicion "Definición 9.1 (Sistema abierto que comparte recursos)"
    Un **sistema abierto** con puertos ``M`` (un conjunto finito) es una terna ``(S, v, p)`` donde ``S`` es un conjunto finito de **variables de estado** (el espacio de estados es ``\mathbb{R}^S``), ``v \colon \mathbb{R}^S \to \mathbb{R}^S`` es un **campo vectorial** (la dinámica ``\dot x = v(x)``) y ``p \colon M \to S`` dice qué variable **expone** cada puerto.

!!! definicion "Definición 9.2 (Diagrama de cableado no dirigido; tesis, Def. 3.2.1)"
    Un diagrama con cajas de tipos ``M_1, \dots, M_n`` y tipo exterior ``N`` es un **cospan** de conjuntos finitos
    ```math
    M_1 + \cdots + M_n \xrightarrow{\ q\ } J \xleftarrow{\ r\ } N,
    ```
    donde ``+`` es la unión disjunta y ``J`` es el conjunto de **uniones**: ``q`` conecta cada puerto de cada caja a una unión y ``r`` conecta los puertos exteriores. Estos diagramas forman el **operad** ``\mathsf{UWD}`` (el operad subyacente a la categoría monoidal simétrica ``(\mathsf{Cospan}(\mathsf{FinSet}), +, 0)``). Los propios diagramas son instancias de un esquema, ``\mathrm{Th}(\mathsf{UWD})``, con objetos *cajas*, *puertos*, *uniones* y *puertos exteriores*: ¡otra vez el capítulo 4!

!!! margen "Palabras"
    *Cospan* y *operad* se usan en inglés también en los textos en español.

!!! definicion "Definición 9.3 (Composición: el álgebra Dynam)"
    Sean ``(S_i, v_i, p_i)`` sistemas, ``S = \sum_i S_i`` (unión disjunta), ``v = \sum_i v_i`` (cada uno en sus coordenadas) y ``p = \sum_i p_i \colon \sum_i M_i \to S``. El sistema compuesto según el diagrama ``M \xrightarrow{q} J \xleftarrow{r} N`` es
    ```math
    \big(\,S +_M J,\ \ \tilde q_* \circ v \circ \tilde q^{\,*},\ \ \tilde p \circ r\,\big),
    ```
    donde ``S +_M J`` es el **pushout** de ``S \xleftarrow{p} M \xrightarrow{q} J`` con flechas ``\tilde q \colon S \to S +_M J`` y ``\tilde p \colon J \to S +_M J``; ``\tilde q^{\,*}`` **jala** (``(\tilde q^{\,*}x)(s) = x(\tilde q(s))``) y ``\tilde q_*`` **empuja sumando** (``(\tilde q_* y)(t) = \sum_{\tilde q(s) = t} y(s)``).

En palabras: los estados que se conectan a la misma unión **se vuelven uno solo** (eso es el pushout) y la velocidad de cambio de ese estado es **la suma** de lo que cada pieza le aporta. ¡Es la regla de toda la física de reacciones: los efectos se suman! El código es otra vez una unión-búsqueda:
"""

# ╔═╡ 656be427-9d54-5c11-95d4-6007e3438726
begin
    "Un sistema abierto que comparte recursos (Definición 9.1): estados `S`, campo `v : ℝˢ → ℝˢ` y puertos `p : M → S`."
    struct Sistema
        estados::Vector{Symbol}
        campo::Function
        puertos::Vector{Int}
    end

    "Un diagrama de cableado no dirigido: a qué unión va cada puerto de cada caja, y qué uniones se exponen."
    struct Diagrama
        cajas::Vector{Vector{Symbol}}
        exterior::Vector{Symbol}
    end

    """
        componer_sistemas(d, sistemas)

    El álgebra `Dynam` de la tesis (Definición 9.3): los estados del total son el PUSHOUT de
    `S ← M → J`; el campo total es la suma de los campos empujados, `v = Σᵢ (qᵢ)₊ ∘ vᵢ ∘ (qᵢ)*`.
    """
    function componer_sistemas(d::Diagrama, sistemas::Vector{Sistema})
        length(d.cajas) == length(sistemas) || error("Hay $(length(d.cajas)) cajas y $(length(sistemas)) sistemas.")
        uniones = unique(vcat(d.exterior, d.cajas...))
        desplaz = cumsum(vcat(0, [length(s.estados) for s in sistemas]))
        n = desplaz[end] + length(uniones)
        padre = collect(1:n)                                   # unión-búsqueda: el pushout
        raiz(a) = (while padre[a] != a; a = padre[a]; end; a)
        unir(a, b) = (ra = raiz(a); rb = raiz(b); ra != rb && (padre[max(ra, rb)] = min(ra, rb)))
        indice_union = Dict(u => desplaz[end] + k for (k, u) in enumerate(uniones))
        for (b, (cables, s)) in enumerate(zip(d.cajas, sistemas))
            length(cables) == length(s.puertos) || error("La caja $b tiene $(length(s.puertos)) puertos pero el diagrama le conecta $(length(cables)).")
            for (k, u) in enumerate(cables)
                unir(desplaz[b] + s.puertos[k], indice_union[u])
            end
        end
        clase = Dict{Int,Int}()
        num = [get!(clase, raiz(a), length(clase) + 1) for a in 1:n]
        nombres = Vector{Symbol}(undef, length(clase))
        for (b, s) in enumerate(sistemas), (k, e) in enumerate(s.estados)
            nombres[num[desplaz[b] + k]] = e
        end
        for (u, i) in indice_union
            nombres[num[i]] = u
        end
        q = [num[desplaz[b]+1:desplaz[b]+length(s.estados)] for (b, s) in enumerate(sistemas)]
        function campo_total(x)
            y = zeros(eltype(x), length(x))
            for (b, s) in enumerate(sistemas)
                vb = s.campo(x[q[b]])                          # jalar (q*) y evaluar
                for (k, c) in enumerate(q[b])
                    y[c] += vb[k]                              # empujar (q₊) y SUMAR
                end
            end
            y
        end
        Sistema(nombres, campo_total, [num[indice_union[u]] for u in d.exterior])
    end
end;

# ╔═╡ 0102f647-2fa9-555f-a953-d2ad15cd8446
md"""
## 9.3 Lotka–Volterra armado con tres piezas

Tres sistemas pequeñísimos: los conejos crecen (``\dot r = \alpha r``), los zorros cazan conejos (``\dot r = -\beta r z``, ``\dot z = \gamma r z``) y los zorros mueren (``\dot z = -\delta z``).

``\alpha`` (crecen los conejos) = $(@bind lv_alfa deslizador(0.3:0.05:1.5, default = 0.9))

``\beta`` (cazan) = $(@bind lv_beta deslizador(0.02:0.01:0.2, default = 0.08))

``\gamma`` (se alimentan los zorros) = $(@bind lv_gamma deslizador(0.01:0.01:0.12, default = 0.05))

``\delta`` (mueren los zorros) = $(@bind lv_delta deslizador(0.2:0.05:1.2, default = 0.6))
"""

# ╔═╡ cd405b83-d024-58a1-bf1c-def67ea5af96
begin
    crecen_conejos = Sistema([:conejos], x -> [lv_alfa * x[1]], [1])
    cazan = Sistema([:conejos, :zorros], x -> [-lv_beta * x[1] * x[2], lv_gamma * x[1] * x[2]], [1, 2])
    mueren_zorros = Sistema([:zorros], x -> [-lv_delta * x[1]], [1])
    diagrama_lv = Diagrama([[:conejos], [:conejos, :zorros], [:zorros]], [:conejos, :zorros])
    lotka_volterra = componer_sistemas(diagrama_lv, [crecen_conejos, cazan, mueren_zorros])
end

# ╔═╡ 9768319a-a82c-5cb9-ade3-537f5099bd38
dibujar_diagrama(diagrama_lv, ["crecen conejos", "zorros cazan", "mueren zorros"]; titulo = "Lotka–Volterra")

# ╔═╡ 39e8f582-373e-5ca1-ba01-a5590c5bec7f
let
    r, z = indice_estado(lotka_volterra, :conejos), indice_estado(lotka_volterra, :zorros)
    fallas, casos = 0, 500
    for _ in 1:casos
        x = 30 .* rand(2)
        esperado = [lv_alfa * x[r] - lv_beta * x[r] * x[z], lv_gamma * x[r] * x[z] - lv_delta * x[z]]
        y = lotka_volterra.campo(x)
        maximum(abs.([y[r], y[z]] .- esperado)) < 1e-9 || (fallas += 1)
    end
    Comprobacion("La composición da las ecuaciones de Lotka–Volterra",
        [("ṙ = αr − βrz  y  ż = γrz − δz  en puntos al azar", casos, fallas)])
end

# ╔═╡ 513f3289-7739-55ff-b1c6-7b8689283662
md"""
Ahora resolvemos las ecuaciones (Runge–Kutta de orden 4, programado a mano) y las vemos moverse: a la izquierda, las poblaciones en el tiempo; a la derecha, el **retrato de fase**, donde cada punto es un estado ``(r, z)`` y la trayectoria da vueltas.
"""

# ╔═╡ f91e3feb-a4d8-5b34-802b-01bd72e8136f
let
    X = rk4(lotka_volterra, [20.0, 8.0], 0.05, 600)
    r, z = indice_estado(lotka_volterra, :conejos), indice_estado(lotka_volterra, :zorros)
    lado_a_lado(
        grafica_animada(0:0.05:30, [X[:, r], X[:, z]], ["conejos", "zorros"], ["#a2620a", "#b03a2e"]; titulo = "Poblaciones"),
        retrato_fase(X[:, r], X[:, z]; nombres = ("conejos", "zorros")))
end

# ╔═╡ a219e98a-2b57-5ebc-835d-af252ba0b70b
md"""
!!! pausa "Pausa para pensar"
    ¿Qué pasa con el centro del ciclo cuando aumentas ``\delta``? Pista: el equilibrio está en ``r^* = \delta/\gamma`` y ``z^* = \alpha/\beta``, donde las dos derivadas se anulan.

## 9.4 Composición jerárquica: la funtorialidad, comprobada

La gran promesa del enfoque composicional (tesis, Ejemplo 14, en versión simplificada: la tesis usa seis especies —conejos, zorros, halcones, peces chicos, peces grandes y tiburones— y aquí usamos cuatro; las tasas numéricas son nuestras): un ecosistema se puede armar **por partes**. Primero un subsistema de **tierra** (conejos, zorros, halcones) y uno de **río** (peces, halcones); luego se pegan por los halcones, que viven en ambos. ¿Da lo mismo que armarlo todo de golpe con las siete piezas? La tesis dice que sí: es la **funtorialidad** del álgebra ``\mathsf{Dynam}``, que respeta la sustitución de diagramas dentro de diagramas (la composición del operad). Ojo: el sistema total solo está definido salvo isomorfismo (como todo pushout), así que comparamos los campos **especie por especie**. Comprobémoslo.
"""

# ╔═╡ df4bdd27-92a4-579f-8024-acf14b2e7f2b
begin
    piezas_tierra = [
        Sistema([:conejos], x -> [0.8x[1]], [1]),                                       # crecen conejos
        Sistema([:conejos, :zorros], x -> [-0.04x[1] * x[2], 0.02x[1] * x[2]], [1, 2]),   # zorros cazan conejos
        Sistema([:conejos, :halcones], x -> [-0.03x[1] * x[2], 0.01x[1] * x[2]], [1, 2]), # halcones cazan conejos
        Sistema([:zorros], x -> [-0.4x[1]], [1]),                                        # mueren zorros
        Sistema([:halcones], x -> [-0.3x[1]], [1]),                                      # mueren halcones
    ]
    piezas_rio = [
        Sistema([:peces], x -> [0.6x[1]], [1]),                                         # crecen peces
        Sistema([:peces, :halcones], x -> [-0.03x[1] * x[2], 0.01x[1] * x[2]], [1, 2]),   # halcones pescan
    ]
    diagrama_tierra = Diagrama([[:conejos], [:conejos, :zorros], [:conejos, :halcones], [:zorros], [:halcones]], [:conejos, :zorros, :halcones])
    diagrama_rio = Diagrama([[:peces], [:peces, :halcones]], [:peces, :halcones])
    diagrama_total = Diagrama([[:conejos, :zorros, :halcones], [:peces, :halcones]], [:conejos, :zorros, :halcones, :peces])
    diagrama_plano = Diagrama(vcat(diagrama_tierra.cajas, diagrama_rio.cajas), [:conejos, :zorros, :halcones, :peces])

    # Estrategia 1: primero los subsistemas, luego el total
    eco_jerarquico = componer_sistemas(diagrama_total,
        [componer_sistemas(diagrama_tierra, piezas_tierra), componer_sistemas(diagrama_rio, piezas_rio)])
    # Estrategia 2: todo de un golpe
    eco_plano = componer_sistemas(diagrama_plano, vcat(piezas_tierra, piezas_rio))
    lado_a_lado(dibujar_diagrama(diagrama_tierra, ["c. crecen", "zorros cazan", "halcones cazan", "z. mueren", "h. mueren"]; titulo = "Tierra"),
                dibujar_diagrama(diagrama_rio, ["peces crecen", "halcones pescan"]; titulo = "Río"))
end

# ╔═╡ 1d126724-7b96-5597-a9ae-5600d210f724
dibujar_diagrama(diagrama_total, ["tierra", "río"]; titulo = "Ecosistema = tierra + río, pegados por los halcones")

# ╔═╡ 6a0032dc-57cd-53f6-a823-20df1aba0d31
let
    especies = [:conejos, :zorros, :halcones, :peces]
    ij = [indice_estado(eco_jerarquico, e) for e in especies]
    ip = [indice_estado(eco_plano, e) for e in especies]
    fallas, casos, peor = 0, 500, 0.0
    for _ in 1:casos
        x = 50 .* rand(4)                       # un estado al azar, por especie
        xj, xp = zeros(4), zeros(4)
        xj[ij] = x; xp[ip] = x
        d = maximum(abs.(eco_jerarquico.campo(xj)[ij] .- eco_plano.campo(xp)[ip]))
        peor = max(peor, d)
        d < 1e-9 || (fallas += 1)
    end
    Comprobacion("Componer por partes = componer de un golpe (diferencia máxima: $(round(peor; sigdigits = 2)))",
        [("Mismo campo vectorial en estados al azar", casos, fallas)])
end

# ╔═╡ 7802185c-2ae6-53d3-8128-a176b5a66f6b
let
    especies = [:conejos, :zorros, :halcones, :peces]
    x0 = zeros(4)
    x0[[indice_estado(eco_jerarquico, e) for e in especies]] = [30.0, 10.0, 5.0, 30.0]
    X = rk4(eco_jerarquico, x0, 0.05, 1200)
    grafica_animada(0:0.05:60, [X[:, indice_estado(eco_jerarquico, e)] for e in especies], string.(especies),
        ["#a2620a", "#b03a2e", "#1d4f91", "#16807a"]; titulo = "El ecosistema completo", dur = 10)
end

# ╔═╡ 6408e4a5-a780-55a1-898d-15b622798a3c
md"""
## 9.5 El método de Euler es una transformación natural

Las computadoras no resuelven ecuaciones continuas: dan pasos. El método de Euler (capítulo 2) convierte un campo ``v`` en un sistema **discreto** ``x \mapsto x + h\,v(x)``. ¿Qué pasa si discretizamos **antes** de componer? En la versión discreta, la composición es ``u \mapsto 1 + \tilde q_* \circ (u - 1) \circ \tilde q^{\,*}`` (tesis, Teorema 3.2.4). La tesis demuestra que el orden no importa:

!!! teorema "Proposición 9.4 (tesis, Prop. 3.3.2: Euler conmuta con la composición)"
    Para todo paso ``h > 0``, ``\mathrm{Euler}_h`` es una transformación natural del álgebra continua a la discreta: discretizar y luego componer da lo mismo que componer y luego discretizar.

!!! demostracion "Demostración (el cálculo clave)"
    Basta ver que el cuadrado de naturalidad conmuta para cada ``f \colon S \to S'``. Como ``\mathrm{Euler}_h(v) = 1 + h v``,
    ```math
    1 + f_* \circ (\mathrm{Euler}_h(v) - 1) \circ f^* = 1 + f_* \circ (h v) \circ f^* = 1 + h\,(f_* \circ v \circ f^*) = \mathrm{Euler}_h(f_* \circ v \circ f^*),
    ```
    usando que ``f_*`` es **lineal** (empujar es sumar). Falta ver que ``\mathrm{Euler}_h`` respeta la suma de sistemas independientes (la estructura monoidal), lo cual es inmediato porque actúa coordenada por coordenada. Lo demás se sigue de la maquinaria de *cospans decorados* (Fong, 2015).

Comprobación numérica sobre el ecosistema completo:
"""

# ╔═╡ 7c10b3f4-ca42-5309-bc09-89b9232fbaf6
let
    h = 0.05
    todas = vcat(piezas_tierra, piezas_rio)
    discretizar_despues = euler(componer_sistemas(diagrama_plano, todas), h)
    discretizar_antes = componer_discretos(diagrama_plano, [euler(s, h) for s in todas])
    fallas, casos, peor = 0, 500, 0.0
    for _ in 1:casos
        x = 50 .* rand(4)
        d = maximum(abs.(discretizar_despues.campo(x) .- discretizar_antes.campo(x)))
        peor = max(peor, d)
        d < 1e-9 || (fallas += 1)
    end
    Comprobacion("Euler(componer) = componer(Euler) (diferencia máxima: $(round(peor; sigdigits = 2)), puro redondeo)",
        [("Mismo paso discreto en estados al azar", casos, fallas)])
end

# ╔═╡ cdfc29ae-0035-5951-bbc9-d25c23f113b7
md"""
Las mismas ideas de las gráficas (instancias, morfismos, **pushouts**, funtores, transformaciones naturales) organizan algo tan serio como el modelado científico: la **sintaxis** (el diagrama) y la **semántica** (las ecuaciones) se separan, se pueden cambiar por separado, y las leyes de la teoría garantizan que armar por partes, en cualquier orden, da el mismo resultado.

!!! tesis "Y más allá"
    La segunda parte de la tesis va en la dirección contraria: muestra cómo los sistemas **continuos computan**. Con **retículas de atractores** y **esqueletos computacionales** lee, en una red neuronal recurrente entrenada, el autómata discreto que implementa. Su capítulo 2 empieza justo con conjuntos parcialmente ordenados y retículas (sección 2.1.1), como el orden de divisibilidad del capítulo 5.
"""

# ╔═╡ ee8f7076-fb65-5ca3-acc5-774cfd8c0d72
plegable("Así se escribe en AlgebraicJulia (AlgebraicDynamics.jl)", md"""
```julia
using AlgebraicDynamics, Catlab
crecen = ContinuousResourceSharer{Float64}(1, (u, p, t) -> [p.α * u[1]])
cazan  = ContinuousResourceSharer{Float64}(2, (u, p, t) -> [-p.β * u[1] * u[2], p.γ * u[1] * u[2]])
mueren = ContinuousResourceSharer{Float64}(1, (u, p, t) -> [-p.δ * u[1]])
d = @relation (conejos, zorros) begin
    crecen(conejos)
    cazan(conejos, zorros)
    mueren(zorros)
end
lv = oapply(d, [crecen, cazan, mueren])     # ¡la composición!
```
""")

# ╔═╡ 1d133a2d-5eaa-548d-be5a-0439d6fef8ca
md"""
## 9.6 Resumen

!!! resumen "Resumen del capítulo 9"
    Un **sistema abierto** expone algunos estados por sus puertos; un **diagrama** (un cospan) dice qué puertos comparten recurso (Definiciones 9.1 y 9.2). Componer es calcular el **pushout** de los estados y **sumar** los campos empujados (Definición 9.3). Armar por partes o de golpe da lo mismo, y el método de Euler conmuta con la composición (Proposición 9.4): leyes que Julia comprobó en estados al azar.
"""

# ╔═╡ 905b6f4f-6005-5c1e-9c0e-fa8b1b4a093e
capitulo("Apéndice A", "Glosario")

# ╔═╡ 48a901d1-6514-5d6f-bd50-478b91b3a895
md"""

| Término | Significado | Otros nombres (español · inglés) |
|:--------|:------------|:---------------------------------|
| **Gráfica dirigida** | Conjuntos ``A``, ``V`` y funciones ``\mathrm{src}, \mathrm{tgt} : A \to V`` (permite lazos y flechas paralelas) | multidigráfica con lazos, carcaj; *grafo* en España · *graph*, *quiver* |
| **Vértice · flecha · lazo** | Punto · elemento de ``A`` · flecha con el mismo origen y destino | nodo · arco, arista dirigida · bucle · *vertex · edge, arrow · loop* |
| **Origen · destino** | ``\mathrm{src}(a)`` · ``\mathrm{tgt}(a)`` | fuente · meta · *source · target* |
| **Flecha colgante** | Una flecha sin origen o sin destino; la definición con funciones la hace imposible | *dangling edge* |
| **Esquema (plano)** | Objetos, flechas generadoras y ecuaciones entre caminos | categoría finitamente presentada · *schema* |
| **Instancia** | Conjuntos y funciones que llenan un esquema cumpliendo sus ecuaciones; un funtor ``\mathcal{C} \to \mathsf{Set}`` | 𝒞-conjunto, copregavilla · *C-set, copresheaf* |
| **Morfismo** | Funciones por objeto que hacen conmutar los cuadrados de naturalidad; una transformación natural | homomorfismo (de gráficas) · *homomorphism* |
| **Isomorfismo** | Morfismo con inverso; misma forma, otros nombres | *isomorphism* |
| **Categoría** | Objetos y flechas con composición asociativa e identidades | *category* |
| **Funtor** | Asignación entre categorías que respeta composición e identidades | *functor* |
| **Transformación natural** | Una flecha por objeto que hace conmutar los cuadrados de naturalidad | *natural transformation* |
| **Diagrama conmutativo** | Todos los caminos con el mismo inicio y fin dan la misma flecha | cuadrado que cierra · *commutative diagram* |
| **Span / cospan** | ``X \leftarrow K \rightarrow Y`` / ``X \rightarrow J \leftarrow Y`` | (se usan en inglés) |
| **Pushout** | El pegado de un span, definido por su propiedad universal | suma amalgamada, cuadrado cocartesiano, coproducto fibrado |
| **Pullback** | El dual del pushout (no lo usamos, pero lo encontrarás) | producto fibrado, cuadrado cartesiano |
| **Propiedad universal** | Existe una única flecha hacia cualquier otro candidato | *universal property* |
| **Unión disjunta** ``+``, ``\sqcup`` | Juntar dos conjuntos sin identificar nada | suma, coproducto (en conjuntos) · *disjoint union* |
| **Regla DPO** | ``L \leftarrow K \rightarrow R``: qué buscar, qué conservar, qué pegar | regla de doble pushout · *DPO rewrite rule* |
| **Coincidencia** | Un morfismo ``m : L \to G`` que encuentra ``L`` dentro de ``G`` | *match* |
| **Condiciones de pegado** | De identificación y de no colgantes; garantizan el complemento del pushout | *gluing conditions* |
| **Sistema abierto** | ``(S, v, p)``: variables de estado, campo vectorial y puertos | sistema que comparte recursos · *resource sharer* |
| **Diagrama de cableado** | Cajas con puertos conectados por cables (dirigido o no dirigido) | *wiring diagram* (DWD, UWD) |
| **Operad** | Una estructura para componer muchas cosas a la vez, como los diagramas de cableado | (se usa en inglés) |
| **Conjunto parcialmente ordenado** | Conjunto con un orden reflexivo, antisimétrico y transitivo | orden parcial · *poset* |
| **Retícula** | Orden parcial donde todo par tiene ínfimo y supremo | retículo · *lattice* |

!!! info "Fuentes de la terminología en español"
    Las equivalencias de la tabla salen de tesis y programas de estudio mexicanos:
    - **gráfica** con dos funciones: R. Hernández Barajas, *Teoría de categorías*, tesis de licenciatura, Facultad de Ciencias, UNAM ("una gráfica consiste de dos clases y dos funciones"). [PDF](https://ru.dgb.unam.mx/bitstream/20.500.14330/TES01000199181/3/0199181.pdf)
    - **gráfica**, **digráfica**, **flecha**, **lazo**: R. A. Torres Cruz (2011), *Primeros resultados sobre las digráficas localmente multipartitas semicompletas*, Facultad de Ciencias, UNAM, dir. H. Galeana Sánchez. [PDF](https://ru.dgb.unam.mx/bitstream/20.500.14330/TES01000670335/3/0670335_A1.pdf) · I. A. Goldfeder (2018), *A través de las gráficas*, notas de curso. [PDF](https://www.matem.unam.mx/~ilan/atraves/clase005ec.pdf) · Programa de *Teoría de Gráficas*, FES Acatlán, UNAM. [PDF](https://mac.acatlan.unam.mx/media/temarios/1644/1310.pdf)
    - **carcaj** (*quiver*): J. A. Jiménez González (2015), *Geometría en los inescindibles de un álgebra hereditaria*, Posgrado Conjunto UNAM–UMSNH. [PDF](https://ru.dgb.unam.mx/bitstream/20.500.14330/TES01000725838/3/0725838.pdf)
    - **cuadrado cocartesiano**, **cuadrado cartesiano**, **funtor**, **transformación natural**: V. A. Samayoa Donado (2013), *Homotopía, homología y bordismo*, Facultad de Ciencias, UNAM, dir. C. Prieto de Castro. [PDF](https://ru.dgb.unam.mx/server/api/core/bitstreams/da81e085-044c-4a16-a8b6-125e5df1444f/content)
    - **producto fibrado**: A. Cruz Cigarroa (2011), *La 2-categoría monoidal cerrada de categorías extensivas*, Facultad de Ciencias, UNAM, dir. F. Marmolejo Rivas. [PDF](https://ru.dgb.unam.mx/bitstream/20.500.14330/TES01000679736/3/0679736_A1.pdf)
    - **pregavilla**: J. R. Rosas Mendoza (2023), *Una visión de la categoría de gavillas como "modelo" de la teoría de conjuntos*, Facultad de Ciencias, UNAM. [PDF](https://ru.dgb.unam.mx/jspui/bitstream/20.500.14330/TES01000841265/3/0841265.pdf)
    - **suma amalgamada** y *pushout*: Ó. Andrade Hernández (2014), *Estructura homotópica de Quillen en la categoría de conjuntos simpliciales*, FCFM, BUAP. [PDF](https://www.fcfm.buap.mx/assets/docs/docencia/tesis/ma/OscarAndradeHernandez.pdf)
    - **coproducto fibrado**: J. L. León Medina (2015), *Un estudio algebraico de la teoría de conjuntos*, FCFM, BUAP. [PDF](https://www.fcfm.buap.mx/assets/docs/docencia/tesis/matematicas/JoseLuisLeonMedina.pdf)
    - **operad** en español: M. O. Ronco, *Introducción a la teoría de operads*, FaMAF, Universidad Nacional de Córdoba (Argentina). [PDF](https://www.famaf.unc.edu.ar/documents/883/BMat45-5.pdf)
"""

# ╔═╡ 2b2ce078-d00a-5a32-bca6-05ac7f0db1e4
capitulo("Apéndice B", "Referencias")

# ╔═╡ 67cc7686-6086-50aa-be90-b65950b31e5f
md"""

**Las dos fuentes de este cuaderno**
- Aguinaldo, A., Dancstep, P., Fong, B. y Srinivasan, P. V. *Relational Thinking: from abstractions to applications*. Topos Institute. [toposinstitute.github.io/RelationalThinking-Book](https://toposinstitute.github.io/RelationalThinking-Book/) · código: [RelationalThinking-code](https://github.com/ToposInstitute/RelationalThinking-code)
- Libkind, S. S. (2023). *Composition and Computation in Dynamical Systems*. Tesis doctoral, Stanford University. [purl.stanford.edu/pg155jp4457](https://purl.stanford.edu/pg155jp4457)

**Para profundizar**
- Lawvere, F. W. y Schanuel, S. H. (2009). *Conceptual Mathematics: A First Introduction to Categories* (2.ª ed.). Cambridge University Press.
- Fong, B. y Spivak, D. I. (2019). *An Invitation to Applied Category Theory: Seven Sketches in Compositionality*. Cambridge University Press.
- Spivak, D. I. (2012). Functorial data migration. *Information and Computation*, 217, 31–51.
- Baez, J. C. y Pollard, B. S. (2017). A compositional framework for reaction networks. *Reviews in Mathematical Physics*, 29(9).
- Ehrig, H., Ehrig, K., Prange, U. y Taentzer, G. (2006). *Fundamentals of Algebraic Graph Transformation*. Springer.
- Brown, K., Patterson, E., Hanks, T. y Fairbanks, J. (2022). Computational category-theoretic rewriting. *ICGT 2022*.
- Eilenberg, S. y Mac Lane, S. (1945). General theory of natural equivalences. *Transactions of the AMS*, 58(2), 231–294.

**Software:** [AlgebraicJulia](https://www.algebraicjulia.org): Catlab.jl, AlgebraicRewriting.jl, AlgebraicDynamics.jl.
- Rupel, D. y Spivak, D. I. (2013). The operad of temporal wiring diagrams. arXiv:1307.6894.
- Fong, B. (2015). Decorated cospans. *Theory and Applications of Categories*, 30(33), 1096–1120.
- Lack, S. y Sobociński, P. (2005). Adhesive and quasiadhesive categories. *RAIRO – Theoretical Informatics and Applications*, 39(3), 511–545.
- Cheng, E. (2022). *The Joy of Abstraction*. Cambridge University Press.

**Este cuaderno.** NeoCats, *Pensar en relaciones*, edición 2026. Todo el código es Julia puro (sin paquetes) y está en las celdas visibles y en el apéndice C.
"""

# ╔═╡ 5111cd59-202e-5745-9553-5f46019e51fc
capitulo("Apéndice C", "Detrás del telón")

# ╔═╡ 4b2509aa-e159-54b3-bcc0-34224193d9e2
md"""
Aquí abajo está el resto de la maquinaria: los controles interactivos (incluido el editor de gráficas), la búsqueda de morfismos con retroceso, las categorías finitas, la colocación de dibujos y todas las figuras y animaciones (SVG con animaciones SMIL, sin JavaScript salvo en los controles). Pulsa el ojo de cada celda para ver su código. Es un buen proyecto de lectura para después del viaje.
"""

# ╔═╡ 38f5fc7f-721c-50e1-a6da-3c48359ec943
begin
    # Controles interactivos propios: HTML + JavaScript puro, sin PlutoUI.
    # El cuaderno no instala ni precompila ningún paquete: arranca rápido.
    struct Entrada
        html::String
        inicial::Any
    end
    Base.show(io::IO, ::MIME"text/html", w::Entrada) = print(io, w.html)
    Base.get(w::Entrada) = w.inicial

    escapar_html(s) = replace(string(s), "&" => "&amp;", "<" => "&lt;", ">" => "&gt;", "\"" => "&quot;")

    function opciones(lista)
        grupo = "g" * string(rand(UInt32), base = 16)
        items = join(["""<label class="opc"><input type="radio" name="$grupo" value="$(escapar_html(o))"><span>$(escapar_html(o))</span></label>""" for o in lista])
        clase = all(length(string(o)) <= 26 for o in lista) ? "opciones fila" : "opciones"
        Entrada("""<span class="$clase">$items<script>
            const root = currentScript.parentElement;
            root.addEventListener('input', () => {
                const marcada = root.querySelector('input:checked');
                root.value = marcada ? marcada.value : undefined;
            }, true);
        </script></span>""", nothing)
    end

    function deslizador(rango; default = first(rango))
        Entrada("""<span class="deslizador"><input type="range" min="$(first(rango))" max="$(last(rango))" step="$(step(rango))" value="$default"><output>$default</output><script>
            const root = currentScript.parentElement;
            const barra = root.querySelector('input');
            const salida = root.querySelector('output');
            root.value = barra.valueAsNumber;
            root.addEventListener('input', () => {
                root.value = barra.valueAsNumber;
                salida.textContent = barra.value;
            }, true);
        </script></span>""", default)
    end

    """
        editor_grafica(; inicial = "", ancho = 520, alto = 280)

    Un lienzo para DIBUJAR una gráfica dirigida con el ratón (o el dedo):
    clic en el fondo = nuevo vértice; clic en un vértice y luego en otro = nueva flecha
    (dos veces el mismo = lazo); arrastrar = mover; clic derecho = borrar.
    Su valor es un texto `"n|x,y;x,y;…|src|tgt"` que `leer_grafica` convierte en gráfica.
    """
    function editor_grafica(; inicial = "", ancho = 520, alto = 280)
        Entrada("""<div class="editor"><svg viewBox="0 0 $ancho $alto" width="$ancho" height="$alto"></svg>
        <div class="barra"><button data-a="deshacer">Deshacer</button><button data-a="limpiar">Borrar todo</button>
        <span class="ayuda">clic: vértice · clic, clic: flecha · arrastrar: mover · clic derecho: borrar</span></div>
        <script>
        const root = currentScript.parentElement;
        const svg = root.querySelector('svg');
        const NS = 'http://www.w3.org/2000/svg';
        const PAL = ['#b03a2e','#1d4f91','#2b6a4a','#5d3a8c','#a2620a','#16807a','#c2185b','#4a6b1f'];
        let V = [], A = [], sel = null, hist = [];
        function cargar(txt) {
            V = []; A = [];
            if (!txt) return;
            const p = txt.split('|');
            if (p.length < 4) return;
            const n = parseInt(p[0]) || 0;
            const xy = p[1] ? p[1].split(';') : [];
            for (let i = 0; i < n; i++) { const c = (xy[i] || '0,0').split(','); V.push({x: +c[0], y: +c[1]}); }
            const s = p[2] ? p[2].split(',') : [], t = p[3] ? p[3].split(',') : [];
            for (let k = 0; k < s.length; k++) if (s[k] && t[k]) A.push([+s[k] - 1, +t[k] - 1]);
        }
        function texto() {
            return V.length + '|' + V.map(v => Math.round(v.x) + ',' + Math.round(v.y)).join(';') + '|' +
                   A.map(a => a[0] + 1).join(',') + '|' + A.map(a => a[1] + 1).join(',');
        }
        function avisar() { root.value = texto(); root.dispatchEvent(new CustomEvent('input')); }
        function guardar() { hist.push(texto()); if (hist.length > 60) hist.shift(); }
        function el(tag, at) { const e = document.createElementNS(NS, tag); for (const k in at) e.setAttribute(k, at[k]); return e; }
        function punto(ev) {
            const pt = svg.createSVGPoint(); pt.x = ev.clientX; pt.y = ev.clientY;
            return pt.matrixTransform(svg.getScreenCTM().inverse());
        }
        function dibujar() {
            while (svg.firstChild) svg.removeChild(svg.firstChild);
            const R = 13, grupos = {};
            A.forEach((a, k) => { const c = Math.min(a[0], a[1]) + '-' + Math.max(a[0], a[1]); (grupos[c] = grupos[c] || []).push(k); });
            const cx = V.reduce((s, v) => s + v.x, 0) / Math.max(V.length, 1), cy = V.reduce((s, v) => s + v.y, 0) / Math.max(V.length, 1);
            for (const c in grupos) grupos[c].forEach((k, j) => {
                const [s, t] = A[k], m = grupos[c].length, col = PAL[k % PAL.length];
                let d, tip, dir;
                if (s === t) {
                    const v = V[s]; let th = Math.atan2(v.y - cy, v.x - cx); if (Math.hypot(v.x - cx, v.y - cy) < 1) th = -Math.PI / 2;
                    th += (j - (m - 1) / 2) * 0.95;
                    const a1 = th - .42, a2 = th + .42, c1 = th - .62, c2 = th + .62, L = 52;
                    const x1 = v.x + R * Math.cos(a1), y1 = v.y + R * Math.sin(a1), x2 = v.x + (R + 2) * Math.cos(a2), y2 = v.y + (R + 2) * Math.sin(a2);
                    const k1x = v.x + L * Math.cos(c1), k1y = v.y + L * Math.sin(c1), k2x = v.x + L * Math.cos(c2), k2y = v.y + L * Math.sin(c2);
                    d = `M \${x1} \${y1} C \${k1x} \${k1y}, \${k2x} \${k2y}, \${x2} \${y2}`; tip = [x2, y2]; dir = [x2 - k2x, y2 - k2y];
                } else {
                    const p = V[s], q = V[t], dx = q.x - p.x, dy = q.y - p.y, L = Math.hypot(dx, dy) || 1, ux = dx / L, uy = dy / L;
                    const off = (j - (m - 1) / 2) * 30 * (s < t ? 1 : -1), nx = -uy * off, ny = ux * off;
                    const k1x = p.x + dx / 3 + nx, k1y = p.y + dy / 3 + ny, k2x = p.x + 2 * dx / 3 + nx, k2y = p.y + 2 * dy / 3 + ny;
                    const a = Math.atan2(k1y - p.y, k1x - p.x), b = Math.atan2(k2y - q.y, k2x - q.x);
                    const x1 = p.x + R * Math.cos(a), y1 = p.y + R * Math.sin(a), x2 = q.x + (R + 2) * Math.cos(b), y2 = q.y + (R + 2) * Math.sin(b);
                    d = `M \${x1} \${y1} C \${k1x} \${k1y}, \${k2x} \${k2y}, \${x2} \${y2}`; tip = [x2, y2]; dir = [x2 - k2x, y2 - k2y];
                }
                const ruta = el('path', {d: d, fill: 'none', stroke: col, 'stroke-width': 1.9});
                ruta.addEventListener('contextmenu', ev => { ev.preventDefault(); guardar(); A.splice(k, 1); dibujar(); avisar(); });
                svg.appendChild(ruta);
                const Ld = Math.hypot(dir[0], dir[1]) || 1, tx = dir[0] / Ld, ty = dir[1] / Ld, bx = tip[0] - 10 * tx, by = tip[1] - 10 * ty;
                const ix = tip[0] - 6.5 * tx, iy = tip[1] - 6.5 * ty;
                svg.appendChild(el('path', {d: `M \${tip[0]} \${tip[1]} L \${bx - 4.3 * ty} \${by + 4.3 * tx} L \${ix} \${iy} L \${bx + 4.3 * ty} \${by - 4.3 * tx} Z`, fill: col}));
            });
            V.forEach((v, i) => {
                const g = el('g', {style: 'cursor: pointer'});
                g.appendChild(el('circle', {cx: v.x, cy: v.y, r: 13, fill: sel === i ? '#1b1b1f' : PAL[i % PAL.length], stroke: 'white', 'stroke-width': 1.6}));
                const t = el('text', {x: v.x, y: v.y + 4.5, 'text-anchor': 'middle', 'font-size': 13, fill: 'white', 'font-family': "'CM Serif', 'CMU Serif', serif"});
                t.textContent = i + 1; g.appendChild(t);
                g.addEventListener('pointerdown', ev => {
                    ev.stopPropagation(); ev.preventDefault();
                    if (ev.button === 2) return;
                    const ini = punto(ev); let movido = false; guardar();
                    const mover = e2 => { const q = punto(e2); if (Math.hypot(q.x - ini.x, q.y - ini.y) > 4) movido = true; if (movido) { v.x = q.x; v.y = q.y; dibujar(); } };
                    const soltar = () => {
                        window.removeEventListener('pointermove', mover); window.removeEventListener('pointerup', soltar);
                        if (movido) { avisar(); return; }
                        hist.pop();
                        if (sel === null) { sel = i; dibujar(); }
                        else { guardar(); A.push([sel, i]); sel = null; dibujar(); avisar(); }
                    };
                    window.addEventListener('pointermove', mover); window.addEventListener('pointerup', soltar);
                });
                g.addEventListener('contextmenu', ev => {
                    ev.preventDefault(); guardar();
                    A = A.filter(a => a[0] !== i && a[1] !== i).map(a => [a[0] > i ? a[0] - 1 : a[0], a[1] > i ? a[1] - 1 : a[1]]);
                    V.splice(i, 1); sel = null; dibujar(); avisar();
                });
                svg.appendChild(g);
            });
        }
        svg.addEventListener('pointerdown', ev => {
            if (ev.button !== 0) return;
            if (sel !== null) { sel = null; dibujar(); return; }
            const q = punto(ev); guardar(); V.push({x: q.x, y: q.y}); dibujar(); avisar();
        });
        svg.addEventListener('contextmenu', ev => ev.preventDefault());
        root.querySelector('[data-a=deshacer]').addEventListener('click', ev => { ev.preventDefault(); if (hist.length) { cargar(hist.pop()); sel = null; dibujar(); avisar(); } });
        root.querySelector('[data-a=limpiar]').addEventListener('click', ev => { ev.preventDefault(); guardar(); V = []; A = []; sel = null; dibujar(); avisar(); });
        cargar("$(filter(c -> c in "0123456789,;|.-", string(inicial)))");
        root.value = texto();
        dibujar();
        </script></div>""", inicial)
    end
end;

# ╔═╡ 2d7df016-758f-5577-8ba1-25c0df486596
begin
    "Convierte `código`, **negritas** e *itálicas* de un texto corto a HTML."
    en_linea(s) = replace(replace(replace(escapar_html(s), r"`([^`]*)`" => s"<code>\1</code>"),
        r"\*\*([^*]*)\*\*" => s"<b>\1</b>"), r"\*([^*]+)\*" => s"<i>\1</i>")

    "`cuantos(1, \"flecha\", \"flechas\")` da \"1 flecha\"; con otro número, el plural."
    cuantos(n, singular, plural) = "$n " * (n == 1 ? singular : plural)

    aviso(tipo, titulo, mensaje) = Markdown.MD(Markdown.Admonition(tipo, titulo, [Markdown.parse(mensaje)]))
    html_de(c) = sprint(show, MIME("text/html"), c)
    plegable(titulo, contenido) = HTML("<details class=\"plegable\"><summary>$titulo</summary>" * html_de(contenido) * "</details>")
    juntar(cosas...) = HTML(join(html_de.(cosas)))
    lado_a_lado(cosas...) = HTML("<div class=\"lado-a-lado\">" * join(html_de.(cosas)) * "</div>")

    espera(txt) = HTML("<p class=\"espera\">$txt</p>")
    pendiente() = espera("Reemplaza <code>missing</code> por tu respuesta; esta celda se corrige sola.")
    correcto(mensaje = "Muy bien.") = aviso("correct", "Correcto", mensaje)
    incorrecto(pista) = aviso("danger", "Todavía no", pista)
    function corregir(respuesta, correcta, explicacion, pista)
        if respuesta === nothing || ismissing(respuesta)
            espera("Elige una respuesta para ver si acertaste.")
        elseif respuesta == correcta
            aviso("correct", "Correcto", explicacion)
        else
            aviso("danger", "Todavía no", pista)
        end
    end

    "Una nota al margen (como `\\marginpar` en LaTeX); en pantallas angostas queda en el texto."
    margen(texto) = HTML("<div class=\"margen-html\">$(en_linea(texto))</div>")

    """
        capitulo(n, titulo; epigrafe, autor, libro, metas)

    Encabezado de capítulo al estilo de un libro de LaTeX.
    """
    function capitulo(n, titulo; epigrafe = "", autor = "", libro = "", metas = String[])
        ep = isempty(epigrafe) ? "" : """<div class="epigrafe">$(en_linea(epigrafe))<small>$(en_linea(autor))</small></div>"""
        lb = isempty(libro) ? "" : """<div class="cap-libro">$(en_linea(libro))</div>"""
        mt = isempty(metas) ? "" : """<div class="cap-metas"><i>Al terminar este capítulo sabrás:</i><ul>""" *
            join(["<li>$(en_linea(m))</li>" for m in metas]) * "</ul></div>"
        HTML("""<div class="capitulo"><div class="cap-num">$(n isa AbstractString ? n : "Capítulo $n")</div><h1>$(escapar_html(titulo))</h1>
            <div class="cap-regla"></div>$ep$lb$mt</div>""")
    end

    "Una figura numerada con su pie, como `\\begin{figure}…\\caption{…}`."
    figura(contenido, num, pie) = HTML("""<figure class="figura">$(html_de(contenido))<figcaption><b>Figura $num.</b> $(en_linea(pie))</figcaption></figure>""")
end;

# ╔═╡ 1da9c72a-a651-5bf7-9073-c48ad956c59d
begin
    # ═════════════ GEOMETRÍA (estilo TikZ) ═════════════
    PALETA = ["#b03a2e", "#1d4f91", "#2b6a4a", "#5d3a8c", "#a2620a", "#16807a",
              "#c2185b", "#4a6b1f", "#7b3f00", "#2f5f8a", "#8e244d", "#566573"]
    color_de(i) = PALETA[mod1(i, length(PALETA))]
    TINTA = "#1b1b1f"
    TENUE = "#b9b3a6"
    FUENTE_SVG = "'CM Serif', 'Latin Modern Roman', 'CMU Serif', Georgia, serif"
    RV = 13.0
    f2(x) = string(round(Float64(x); digits = 1))

    "Posiciones de los vértices: las guardadas en la instancia o, si no hay, en círculo."
    function posiciones_de(X)
        n = X.tam[:V]
        length(X.pos) == n && return X.pos
        n == 1 && return [(260.0, 150.0)]
        [(260 + 105cos(2π * (k - 1) / n - π / 2), 150 + 105sin(2π * (k - 1) / n - π / 2)) for k in 1:n]
    end

    "Escala y centra unas posiciones dentro del rectángulo (x0, y0, w, h)."
    function encajar(pos, x0, y0, w, h; margen = 40.0)
        isempty(pos) && return pos
        xs, ys = first.(pos), last.(pos)
        bw, bh = max(maximum(xs) - minimum(xs), 1.0), max(maximum(ys) - minimum(ys), 1.0)
        e = min((w - 2margen) / bw, (h - 2margen) / bh, 1.0)
        mx, my = (maximum(xs) + minimum(xs)) / 2, (maximum(ys) + minimum(ys)) / 2
        [(x0 + w / 2 + e * (x - mx), y0 + h / 2 + e * (y - my)) for (x, y) in pos]
    end

    unitario(dx, dy) = (L = max(hypot(dx, dy), 1e-9); (dx / L, dy / L))

    "Flecha curva de p a q: (inicio, control 1, control 2, fin) como 8 números."
    function geo_flecha(p, q, curva; r = RV)
        (x1, y1), (x2, y2) = p, q
        ux, uy = unitario(x2 - x1, y2 - y1)
        nx, ny = -uy, ux
        c1 = (x1 + (x2 - x1) / 3 + nx * curva, y1 + (y2 - y1) / 3 + ny * curva)
        c2 = (x1 + 2(x2 - x1) / 3 + nx * curva, y1 + 2(y2 - y1) / 3 + ny * curva)
        a1, a2 = unitario(c1[1] - x1, c1[2] - y1)
        b1, b2 = unitario(c2[1] - x2, c2[2] - y2)
        (Float64(x1 + r * a1), Float64(y1 + r * a2), Float64(c1[1]), Float64(c1[2]),
         Float64(c2[1]), Float64(c2[2]), Float64(x2 + (r + 2) * b1), Float64(y2 + (r + 2) * b2))
    end

    "Lazo que sale del punto p en la dirección θ."
    function geo_lazo(p, θ; r = RV, tam = 54.0)
        x, y = p
        d(t) = (cos(t), sin(t))
        a, b, ca, cb = d(θ - 0.42), d(θ + 0.42), d(θ - 0.62), d(θ + 0.62)
        (Float64(x + r * a[1]), Float64(y + r * a[2]), Float64(x + tam * ca[1]), Float64(y + tam * ca[2]),
         Float64(x + tam * cb[1]), Float64(y + tam * cb[2]), Float64(x + (r + 2) * b[1]), Float64(y + (r + 2) * b[2]))
    end

    invertir_geo(g) = (g[7], g[8], g[5], g[6], g[3], g[4], g[1], g[2])
    trazo(g) = "M $(f2(g[1])) $(f2(g[2])) C $(f2(g[3])) $(f2(g[4])), $(f2(g[5])) $(f2(g[6])), $(f2(g[7])) $(f2(g[8]))"

    "Punta de flecha tipo `stealth` de TikZ."
    function punta(g; largo = 10.0, ancho = 4.3)
        tx, ty = unitario(g[7] - g[5], g[8] - g[6])
        nx, ny = -ty, tx
        bx, by = g[7] - largo * tx, g[8] - largo * ty
        ix, iy = g[7] - 0.65largo * tx, g[8] - 0.65largo * ty
        "M $(f2(g[7])) $(f2(g[8])) L $(f2(bx + ancho * nx)) $(f2(by + ancho * ny)) L $(f2(ix)) $(f2(iy)) L $(f2(bx - ancho * nx)) $(f2(by - ancho * ny)) Z"
    end

    "Geometría de una lista de pares (origen, destino): separa flechas paralelas y reparte los lazos."
    function geometrias(pares, pos; r = RV, sep = 30.0)
        n = length(pos)
        cx = n == 0 ? 0.0 : sum(first.(pos)) / n
        cy = n == 0 ? 0.0 : sum(last.(pos)) / n
        out = Vector{NTuple{8,Float64}}(undef, length(pares))
        grupos = Dict{Tuple{Int,Int},Vector{Int}}()
        for (k, (s, t)) in enumerate(pares)
            push!(get!(grupos, (min(s, t), max(s, t)), Int[]), k)
        end
        for (_, ks) in grupos, (j, k) in enumerate(ks)
            s, t = pares[k]
            m = length(ks)
            if s == t
                px, py = pos[s]
                θ0 = abs(px - cx) + abs(py - cy) < 1 ? -π / 2 : atan(py - cy, px - cx)
                out[k] = geo_lazo(pos[s], θ0 + (j - (m + 1) / 2) * 0.95; r = r)
            else
                c = (j - (m + 1) / 2) * sep
                out[k] = geo_flecha(pos[s], pos[t], s < t ? c : -c; r = r)
            end
        end
        out
    end

    "Flechas que se dibujan: todas, salvo en gráficas simétricas (una por cada par inverso)."
    aristas_visibles(X) = haskey(X.fun, :inv) ? [a for a in 1:X.tam[:A] if a <= X.fun[:inv][a]] : collect(1:X.tam[:A])
    es_refl(X, a) = haskey(X.fun, :refl) && a in X.fun[:refl]

    "Geometría de cada flecha de X (en gráficas simétricas, la de su representante)."
    function geo_de_flechas(X, pos)
        reps = aristas_visibles(X)
        geos = geometrias([(X.fun[:src][a], X.fun[:tgt][a]) for a in reps], pos)
        rep_de = Dict(a => k for (k, a) in enumerate(reps))
        [haskey(rep_de, a) ? geos[rep_de[a]] : invertir_geo(geos[rep_de[X.fun[:inv][a]]]) for a in 1:X.tam[:A]]
    end
end;

# ╔═╡ 0541ab2b-82fd-5ded-9c54-94bf4ead7414
begin
    flecha_de(S::Esquema, f::Symbol) = S.flechas[findfirst(x -> x.nombre == f, S.flechas)]
    es_grafica(X) = :V in X.esquema.objetos && :A in X.esquema.objetos && haskey(X.fun, :src) && haskey(X.fun, :tgt)

    "Gráfica dirigida con `nv` vértices y flechas `src[k] → tgt[k]`."
    grafica(nv, src, tgt; kw...) = instancia(GRAFICA; V = nv, A = length(src), src = src, tgt = tgt, kw...)

    "Gráfica reflexiva: a las flechas dadas se agrega, al final, un lazo `refl(v)` por vértice."
    function reflexiva(nv, src, tgt; kw...)
        n = length(src)
        instancia(REFLEXIVA; V = nv, A = n + nv, src = vcat(collect(Int, src), 1:nv),
            tgt = vcat(collect(Int, tgt), 1:nv), refl = collect(n+1:n+nv), kw...)
    end

    "Gráfica simétrica: la arista k = (a, b) se guarda como las flechas 2k−1: a → b y 2k: b → a."
    function simetrica(nv, aristas; kw...)
        src = Int[]; tgt = Int[]; inv = Int[]
        for (k, (a, b)) in enumerate(aristas)
            append!(src, (a, b)); append!(tgt, (b, a)); append!(inv, (2k, 2k - 1))
        end
        instancia(SIMETRICA; V = nv, A = length(src), src = src, tgt = tgt, inv = inv, kw...)
    end

    "Lee el texto del editor de gráficas: `\"n|x,y;…|src|tgt\"`."
    function leer_grafica(s; nombres = String[])
        p = split(string(s), '|')
        length(p) < 4 && return grafica(0, Int[], Int[])
        n = something(tryparse(Int, p[1]), 0)
        pos = [Tuple(parse.(Float64, split(q, ','))) for q in split(p[2], ';'; keepempty = false)]
        src = [parse(Int, x) for x in split(p[3], ','; keepempty = false)]
        tgt = [parse(Int, x) for x in split(p[4], ','; keepempty = false)]
        grafica(n, src, tgt; pos = length(pos) == n ? pos : Tuple{Float64,Float64}[], nombres = nombres)
    end
end;

# ╔═╡ 0f002c83-8edc-5d43-a14e-ae75a6764114
begin
    "Resultado de una comprobación: cada ley con el número de casos revisados y de fallas."
    struct Comprobacion
        titulo::String
        filas::Vector{Tuple{String,Int,Int}}
    end
    todo_bien(c::Comprobacion) = all(f[3] == 0 for f in c.filas)
end;

# ╔═╡ f146ffc5-08d7-5d53-9de3-9b7fe037571d
begin
    """
        morfismos(X, Y; inyectivo = false, limite)

    TODOS los morfismos de `X` en `Y` (para cualquier esquema) por búsqueda con retroceso:
    se asigna un elemento a la vez y se poda la rama en cuanto un cuadrado no puede conmutar.
    Con `limite` se detiene al encontrar esa cantidad.
    """
    function morfismos(X::Instancia, Y::Instancia; inyectivo = false, limite = typemax(Int))
        S = X.esquema
        variables = [(o, i) for o in S.objetos for i in 1:X.tam[o]]
        asig = Dict{Tuple{Symbol,Int},Int}()
        pre = Dict{Tuple{Symbol,Int},Vector{Int}}()
        for f in S.flechas, (x, j) in enumerate(X.fun[f.nombre])
            push!(get!(pre, (f.nombre, j), Int[]), x)
        end
        encontrados = Morfismo[]
        function compatible(o, i, val)
            if inyectivo
                for k in 1:X.tam[o]
                    k != i && get(asig, (o, k), 0) == val && return false
                end
            end
            for f in S.flechas
                if f.dom == o
                    j = X.fun[f.nombre][i]
                    w = (f.cod == o && j == i) ? val : get(asig, (f.cod, j), 0)
                    w != 0 && w != Y.fun[f.nombre][val] && return false
                end
                if f.cod == o
                    for x in get(pre, (f.nombre, i), Int[])
                        w = (f.dom == o && x == i) ? val : get(asig, (f.dom, x), 0)
                        w != 0 && Y.fun[f.nombre][w] != val && return false
                    end
                end
            end
            true
        end
        function buscar(k)
            length(encontrados) >= limite && return
            if k > length(variables)
                push!(encontrados, Morfismo(X, Y, Dict{Symbol,Vector{Int}}(o => [asig[(o, i)] for i in 1:X.tam[o]] for o in S.objetos)))
                return
            end
            o, i = variables[k]
            for val in 1:Y.tam[o]
                if compatible(o, i, val)
                    asig[(o, i)] = val
                    buscar(k + 1)
                    delete!(asig, (o, i))
                end
            end
        end
        buscar(1)
        encontrados
    end

    son_isomorfas(X::Instancia, Y::Instancia) =
        all(X.tam[o] == Y.tam[o] for o in X.esquema.objetos) && !isempty(morfismos(X, Y; inyectivo = true, limite = 1))
end;

# ╔═╡ 2136c842-5c9c-548c-8372-ee80ddb6ffff
begin
    "La categoría de los conjuntos {1,…,n} (n en `tamaños`) y TODAS las funciones entre ellos."
    function conjuntos_finitos(tamaños)
        flechas = Any[]
        for n in tamaños, m in tamaños, v in Iterators.product(ntuple(_ -> 1:m, n)...)
            push!(flechas, (dom = n, cod = m, dato = collect(Int, v)))
        end
        CategoriaFinita("conjuntos {1,…,n} con n ∈ $(collect(tamaños))", collect(Any, tamaños), flechas,
            (f, g) -> (dom = f.dom, cod = g.cod, dato = g.dato[f.dato]),
            n -> (dom = n, cod = n, dato = collect(1:n)))
    end

    "Un conjunto parcialmente ordenado visto como categoría: una flecha a → b exactamente cuando a ≼ b."
    function orden_como_categoria(nombre, elementos, menor_o_igual)
        flechas = Any[(dom = a, cod = b, dato = nothing) for a in elementos for b in elementos if menor_o_igual(a, b)]
        CategoriaFinita(nombre, collect(Any, elementos), flechas,
            (f, g) -> (dom = f.dom, cod = g.cod, dato = nothing),
            a -> (dom = a, cod = a, dato = nothing))
    end

    "Unas cuantas instancias y TODOS los morfismos entre ellas: un trocito de 𝒞-Set."
    function categoria_de_instancias(nombre, instancias)
        flechas = Any[]
        for (i, X) in enumerate(instancias), (j, Y) in enumerate(instancias), α in morfismos(X, Y)
            push!(flechas, (dom = i, cod = j, dato = α))
        end
        CategoriaFinita(nombre, collect(Any, 1:length(instancias)), flechas,
            (f, g) -> (dom = f.dom, cod = g.cod, dato = componer(f.dato, g.dato)),
            i -> (dom = i, cod = i, dato = identidad(instancias[i])))
    end

    """
    Forma normal de un camino: usa cada ecuación como regla `izq → der` mientras se pueda.
    En los esquemas de este cuaderno cada regla acorta el camino (el proceso termina) y las
    reglas son confluentes, así que cada camino tiene UNA forma normal.
    """
    function forma_normal(S::Esquema, camino::Vector{Symbol})
        c = copy(camino)
        cambio = true
        while cambio
            cambio = false
            for e in S.ecuaciones
                n = length(e.izq)
                for k in 1:(length(c) - n + 1)
                    if c[k:k+n-1] == e.izq
                        c = vcat(c[1:k-1], e.der, c[k+n:end])
                        cambio = true
                        break
                    end
                end
                cambio && break
            end
        end
        c
    end

    "Todos los caminos componibles de longitud ≤ L que salen de `desde`, con su objeto de llegada."
    function caminos(S::Esquema, desde::Symbol, L::Int)
        todos = [(Symbol[], desde)]
        frontera = [(Symbol[], desde)]
        for _ in 1:L
            nueva = Tuple{Vector{Symbol},Symbol}[]
            for (c, o) in frontera, f in S.flechas
                f.dom == o && push!(nueva, (vcat(c, f.nombre), f.cod))
            end
            append!(todos, nueva)
            frontera = nueva
        end
        todos
    end

    "Hom(a, b) en la categoría presentada por el esquema: caminos de a a b, salvo ecuaciones."
    hom_esquema(S::Esquema, a::Symbol, b::Symbol; L = 5) =
        unique([forma_normal(S, c) for (c, o) in caminos(S, a, L) if o == b])

    function categoria_del_esquema(S::Esquema)
        flechas = Any[(dom = a, cod = b, dato = c) for a in S.objetos for b in S.objetos for c in hom_esquema(S, a, b)]
        CategoriaFinita("la categoría presentada por el esquema de $(S.nombre)", collect(Any, S.objetos), flechas,
            (f, g) -> (dom = f.dom, cod = g.cod, dato = forma_normal(S, vcat(f.dato, g.dato))),
            o -> (dom = o, cod = o, dato = Symbol[]))
    end

    "Comprueba que una instancia es un funtor: manda caminos a funciones respetando composición e identidades."
    function verificar_funtor(X::Instancia; L = 4)
        S = X.esquema
        comp = ident = bien_def = 0
        fc = fi = fb = 0
        for a in S.objetos
            ident += 1
            all(aplicar(X, Symbol[], i) == i for i in 1:X.tam[a]) || (fi += 1)
            for (c, b) in caminos(S, a, L)
                bien_def += 1
                n = forma_normal(S, c)
                all(aplicar(X, c, i) == aplicar(X, n, i) for i in 1:X.tam[a]) || (fb += 1)
                for (c2, _) in caminos(S, b, 2)
                    comp += 1
                    all(aplicar(X, vcat(c, c2), i) == aplicar(X, c2, aplicar(X, c, i)) for i in 1:X.tam[a]) || (fc += 1)
                end
            end
        end
        Comprobacion("la instancia es un funtor de la categoría presentada por el esquema en **Set**", [
            ("respeta identidades: X(id) = id", ident, fi),
            ("respeta la composición: X(p ⨟ q) = X(p) ⨟ X(q)", comp, fc),
            ("está bien definida: caminos iguales en el esquema dan funciones iguales", bien_def, fb)])
    end
end;

# ╔═╡ 6b551182-7c2e-5909-9a31-b561a6f0589a
"Coloca los vértices de un pegado en el promedio de sus representantes (solo para dibujar)."
function colocar_pegado(P, X, Y, iX, iY)
    es_grafica(X) || return P
    px, py = encajar(posiciones_de(X), 20, 20, 250, 260), encajar(posiciones_de(Y), 290, 20, 250, 260)
    pos = Tuple{Float64,Float64}[]
    for c in 1:P.tam[:V]
        miembros = vcat(px[findall(==(c), iX[:V])], py[findall(==(c), iY[:V])])
        push!(pos, (sum(first.(miembros)) / length(miembros), sum(last.(miembros)) / length(miembros)))
    end
    nombres = String[]
    if !isempty(X.nombres) || !isempty(Y.nombres)
        nombres = fill("", P.tam[:V])
        for (Z, i) in ((X, iX), (Y, iY)), v in 1:Z.tam[:V]
            nom = length(Z.nombres) >= v ? Z.nombres[v] : ""
            isempty(nombres[i[:V][v]]) && (nombres[i[:V][v]] = nom)
        end
    end
    Instancia(P.esquema, P.tam, P.fun, pos, nombres)
end;

# ╔═╡ 33ce5819-d3e1-5264-9763-00b10161c7c5
"Coloca los vértices del resultado: lo que viene de D se queda; lo nuevo, junto a sus vecinos."
function colocar_resultado(po, D)
    H = po.objeto
    (es_grafica(H) && !isempty(D.pos)) || return H
    posD = D.pos
    pos = fill((NaN, NaN), H.tam[:V])
    for (d, h) in enumerate(po.iX.comp[:V])
        pos[h] = posD[d]
    end
    cx = sum(first.(posD)) / max(length(posD), 1); cy = sum(last.(posD)) / max(length(posD), 1)
    for _ in 1:3, v in 1:H.tam[:V]
        isnan(pos[v][1]) || continue
        otros = [H.fun[:src][a] == v ? H.fun[:tgt][a] : H.fun[:src][a] for a in 1:H.tam[:A] if H.fun[:src][a] == v || H.fun[:tgt][a] == v]
        conocidos = [pos[w] for w in otros if !isnan(pos[w][1])]
        isempty(conocidos) && continue
        mx = sum(first.(conocidos)) / length(conocidos); my = sum(last.(conocidos)) / length(conocidos)
        dx, dy = mx - cx, my - cy
        Lr = max(hypot(dx, dy), 1.0)
        pos[v] = (mx + 55dx / Lr, my + 55dy / Lr)
    end
    for v in 1:H.tam[:V]
        isnan(pos[v][1]) && (pos[v] = (cx + 60cos(1.7v), cy + 60sin(1.7v)))
    end
    nombres = String[]
    if length(D.nombres) == D.tam[:V] && !isempty(D.nombres)
        nombres = fill("", H.tam[:V])
        for (d, h) in enumerate(po.iX.comp[:V])
            nombres[h] = D.nombres[d]
        end
    end
    Instancia(H.esquema, H.tam, H.fun, pos, nombres)
end;

# ╔═╡ a3248da9-8081-5e75-b174-ac37b29195f7
begin
    "Runge–Kutta de orden 4 con paso `h`."
    function rk4(s::Sistema, x0::Vector{Float64}, h::Float64, pasos::Int)
        X = zeros(pasos + 1, length(x0)); X[1, :] = x0
        x = copy(x0)
        for t in 1:pasos
            k1 = s.campo(x); k2 = s.campo(x .+ h / 2 .* k1)
            k3 = s.campo(x .+ h / 2 .* k2); k4 = s.campo(x .+ h .* k3)
            x = x .+ h / 6 .* (k1 .+ 2k2 .+ 2k3 .+ k4)
            X[t+1, :] = x
        end
        X
    end
    indice_estado(s::Sistema, nombre::Symbol) = findfirst(==(nombre), s.estados)
    "Método de Euler: el sistema continuo `v` se vuelve el discreto `x ↦ x + h·v(x)`."
    euler(s::Sistema, h) = Sistema(s.estados, x -> x .+ h .* s.campo(x), s.puertos)
    "Composición de sistemas DISCRETOS (tesis, Teorema 3.2.4): `u = 1 + Σ q₊ ∘ (uᵢ − 1) ∘ q*`."
    function componer_discretos(d::Diagrama, sistemas::Vector{Sistema})
        incrementos = [Sistema(s.estados, x -> s.campo(x) .- x, s.puertos) for s in sistemas]
        total = componer_sistemas(d, incrementos)
        Sistema(total.estados, x -> x .+ total.campo(x), total.puertos)
    end
end;

# ╔═╡ f1aa92b9-d3f5-5e61-8adb-9f6441918262
begin
    # ═════════════ LIENZO Y GRÁFICAS ═════════════
    "Un lienzo SVG. Los lienzos animados llevan la clase `anim` (se pausan fuera de pantalla)."
    lienzo_svg(contenido; ancho = 520, alto = 300, anim = false) =
        """<div class="lienzo-marco"><svg $(anim ? "class=\"anim\" " : "")xmlns="http://www.w3.org/2000/svg" viewBox="0 0 $ancho $alto" width="$ancho" height="$alto" role="img">$contenido</svg></div>"""

    texto_svg(x, y, s; tam = 14, ancla = "middle", color = TINTA, estilo = "normal", peso = "normal") =
        """<text x="$(f2(x))" y="$(f2(y))" text-anchor="$ancla" font-size="$tam" font-style="$estilo" font-weight="$peso" fill="$color" font-family="$FUENTE_SVG">$s</text>"""

    function etiqueta_vertice(X, v, x, y; fantasma = false)
        nombre = length(X.nombres) >= v ? X.nombres[v] : ""
        if isempty(nombre)
            texto_svg(x, y + 4.5, v; tam = 13, color = fantasma ? TENUE : "white")
        else
            texto_svg(x, y + 30, escapar_html(nombre); tam = 14, estilo = "italic", color = fantasma ? TENUE : TINTA)
        end
    end

    "Elementos SVG de una gráfica (dirigida, reflexiva o simétrica)."
    function svg_grafica(X; pos = posiciones_de(X), fantasma = false,
                         color_v = color_de, color_a = color_de, grosor = 1.9, rotulos = false)
        geos = geo_de_flechas(X, pos)
        dirigida = !haskey(X.fun, :inv)
        io = IOBuffer()
        for a in aristas_visibles(X)
            g = geos[a]
            tenue = es_refl(X, a)
            col = fantasma ? TENUE : (tenue ? TENUE : color_a(a))
            guion = (fantasma || tenue) ? " stroke-dasharray=\"4 3\"" : ""
            print(io, "<path d=\"", trazo(g), "\" fill=\"none\" stroke=\"", col, "\" stroke-width=\"", grosor, "\"", guion, "/>")
            dirigida && print(io, "<path d=\"", punta(g), "\" fill=\"", col, "\"/>")
            if rotulos && !fantasma
                mx = 0.125g[1] + 0.375g[3] + 0.375g[5] + 0.125g[7]
                my = 0.125g[2] + 0.375g[4] + 0.375g[6] + 0.125g[8]
                tx, ty = unitario(g[7] - g[1], g[8] - g[2])
                print(io, texto_svg(mx - 11ty, my + 11tx + 4, a; tam = 13, estilo = "italic", color = col))
            end
        end
        for v in 1:X.tam[:V]
            x, y = pos[v]
            if fantasma
                print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="$RV" fill="none" stroke="$TENUE" stroke-width="1.4" stroke-dasharray="3 2.5"/>""")
            else
                print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="$RV" fill="$(color_v(v))" stroke="white" stroke-width="1.6"/>""")
            end
            print(io, etiqueta_vertice(X, v, x, y; fantasma = fantasma))
        end
        String(take!(io))
    end

    "Dibuja una gráfica en un lienzo."
    dibujar(X; ancho = 520, alto = 280, kw...) =
        HTML(lienzo_svg(svg_grafica(X; pos = encajar(posiciones_de(X), 0, 0, ancho, alto), kw...); ancho = ancho, alto = alto))

    "Tabla con los datos de una instancia: lo que ve la computadora."
    function tabla_datos(X)
        filas = join(["<tr><th>$o</th><td>{" * join(1:X.tam[o], ", ") * "}</td></tr>" for o in X.esquema.objetos])
        filas *= join(["<tr><th>$(f.nombre) : $(f.dom) → $(f.cod)</th><td>" *
                       join(["<span class=\"mapa\">$x ↦ $y</span>" for (x, y) in enumerate(X.fun[f.nombre])], " ") *
                       "</td></tr>" for f in X.esquema.flechas])
        "<table class=\"datos\">$filas</table>"
    end

    function Base.show(io::IO, ::MIME"text/html", X::Instancia)
        malos = errores(X)
        estado = isempty(malos) ? "<span class=\"ok\">✓ válida</span>" : "<span class=\"mal\">✗ no es una instancia</span>"
        dibujo = if !isempty(malos)
            "<div class=\"problemas\"><i>No se puede dibujar:</i><ul>" * join(["<li>$(en_linea(m))</li>" for m in malos]) * "</ul></div>"
        elseif es_grafica(X)
            lienzo_svg(svg_grafica(X; pos = encajar(posiciones_de(X), 0, 0, 520, 280)); alto = 280)
        else
            ""
        end
        print(io, """<div class="instancia"><div class="instancia-titulo">Instancia de <i>$(X.esquema.nombre)</i> $estado</div>
            <div class="instancia-cuerpo"><div>$dibujo</div><div><div class="mini-titulo">Lo que ve la computadora</div>$(tabla_datos(X))</div></div></div>""")
    end

    # ═════════════ EL ESQUEMA DIBUJADO (flechas gordas) ═════════════
    function Base.show(io::IO, ::MIME"text/html", S::Esquema)
        n = length(S.objetos)
        pos = n <= 3 ? [(n == 1 ? 260.0 : 110 + 300 * (k - 1) / (n - 1), 110.0) for k in 1:n] :
                       [(260 + 170cos(2π * (k - 1) / n - π / 2), 120 + 78sin(2π * (k - 1) / n - π / 2)) for k in 1:n]
        idx = Dict(o => k for (k, o) in enumerate(S.objetos))
        geos = geometrias([(idx[f.dom], idx[f.cod]) for f in S.flechas], pos; r = 33.0, sep = 48.0)
        cuerpo = IOBuffer()
        for (k, f) in enumerate(S.flechas)
            g = geos[k]
            col = color_de(k + 1)
            print(cuerpo, "<path d=\"", trazo(g), "\" fill=\"none\" stroke=\"", col, "\" stroke-opacity=\".18\" stroke-width=\"12\" stroke-linecap=\"round\"/>")
            print(cuerpo, "<path d=\"", trazo(g), "\" fill=\"none\" stroke=\"", col, "\" stroke-width=\"1.9\"/>")
            print(cuerpo, "<path d=\"", punta(g; largo = 13, ancho = 6), "\" fill=\"", col, "\"/>")
            tx = 0.125g[1] + 0.375g[3] + 0.375g[5] + 0.125g[7]
            ty = 0.125g[2] + 0.375g[4] + 0.375g[6] + 0.125g[8]
            print(cuerpo, texto_svg(tx, ty - 9, f.nombre; tam = 15, estilo = "italic", color = col))
        end
        for (k, o) in enumerate(S.objetos)
            x, y = pos[k]
            print(cuerpo, """<circle cx="$(f2(x))" cy="$(f2(y))" r="31" fill="#f4efe4" stroke="$TINTA" stroke-width="1.3"/>""",
                texto_svg(x, y + 6, o; tam = 17, estilo = "italic"))
        end
        ecs = isempty(S.ecuaciones) ? "<i class=\"tenue\">sin ecuaciones</i>" :
            join(["<code>$(texto_camino(e.izq, e.objeto)) = $(texto_camino(e.der, e.objeto))</code>" for e in S.ecuaciones], " &nbsp; ")
        print(io, """<div class="instancia"><div class="instancia-titulo">Esquema <i>$(S.nombre)</i></div>""",
            lienzo_svg(String(take!(cuerpo)); ancho = 520, alto = n <= 3 ? 210 : 250),
            """<div class="ecuaciones">Ecuaciones: $ecs</div></div>""")
    end

    # ═════════════ ANIMACIONES ═════════════
    "Animación SMIL de ida y vuelta: quieto en a, viaja a b, quieto en b, regresa."
    anim(attr, a, b; dur = 6.0, tiempos = "0;0.18;0.5;0.82;1") =
        """<animate attributeName="$attr" values="$a;$a;$b;$b;$a" keyTimes="$tiempos" calcMode="spline" keySplines="0 0 1 1;0.45 0 0.2 1;0 0 1 1;0.45 0 0.2 1" dur="$(dur)s" repeatCount="indefinite"/>"""

    anim_valores(attr, valores, tiempos; dur = 8.0, modo = "linear") =
        """<animate attributeName="$attr" values="$(join(valores, ";"))" keyTimes="$(join(tiempos, ";"))" dur="$(dur)s" calcMode="$modo" repeatCount="indefinite"/>"""

    "Anima un morfismo de gráficas: cada vértice y cada flecha de X viaja a su imagen en Y."
    function animar_morfismo(α; dur = 6.0, ancho = 620)
        X, Y = α.dom, α.cod
        pX = encajar(posiciones_de(X), 6, 26, 0.4ancho, 250)
        pY = encajar(posiciones_de(Y), 0.52ancho, 26, 0.46ancho, 250)
        gX, gY = geo_de_flechas(X, pX), geo_de_flechas(Y, pY)
        dirigida = !haskey(X.fun, :inv)
        io = IOBuffer()
        print(io, texto_svg(0.2ancho, 20, "X"; tam = 16, estilo = "italic"), texto_svg(0.75ancho, 20, "Y"; tam = 16, estilo = "italic"),
                  texto_svg(0.46ancho, 20, "α"; tam = 16, estilo = "italic", color = "#7a7468"))
        print(io, svg_grafica(Y; pos = pY, fantasma = true))
        for a in aristas_visibles(X)
            g0, g1 = gX[a], gY[α.comp[:A][a]]
            col = es_refl(X, a) ? TENUE : color_de(a)
            print(io, "<path d=\"", trazo(g0), "\" fill=\"none\" stroke=\"", col, "\" stroke-width=\"2\">", anim("d", trazo(g0), trazo(g1); dur = dur), "</path>")
            dirigida && print(io, "<path d=\"", punta(g0), "\" fill=\"", col, "\">", anim("d", punta(g0), punta(g1); dur = dur), "</path>")
        end
        for v in 1:X.tam[:V]
            (x0, y0), (x1, y1) = pX[v], pY[α.comp[:V][v]]
            print(io, """<circle cx="$(f2(x0))" cy="$(f2(y0))" r="$RV" fill="$(color_de(v))" stroke="white" stroke-width="1.6" opacity=".95">""",
                anim("cx", f2(x0), f2(x1); dur = dur), anim("cy", f2(y0), f2(y1); dur = dur), "</circle>")
            print(io, """<text x="$(f2(x0))" y="$(f2(y0 + 4.5))" text-anchor="middle" font-size="13" fill="white" font-family="$FUENTE_SVG">$v""",
                anim("x", f2(x0), f2(x1); dur = dur), anim("y", f2(y0 + 4.5), f2(y1 + 4.5); dur = dur), "</text>")
        end
        lienzo_svg(String(take!(io)); ancho = ancho, alto = 290, anim = true)
    end

    function tabla_componentes(α)
        filas = join(["<tr><th>α<sub>$o</sub></th><td>" * join(["<span class=\"mapa\">$x ↦ $y</span>" for (x, y) in enumerate(α.comp[o])], " ") * "</td></tr>"
                      for o in α.dom.esquema.objetos])
        "<table class=\"datos\">$filas</table>"
    end

    function Base.show(io::IO, ::MIME"text/html", α::Morfismo)
        malos = fallas_naturalidad(α)
        if isempty(malos)
            tipo = es_isomorfismo(α) ? "Un <i>isomorfismo</i>" : es_inyectivo(α) ? "Una <i>inyección</i>" : "Un <i>morfismo</i>"
            print(io, """<div class="instancia"><div class="instancia-titulo">$tipo <span class="ok">✓ todos los cuadrados conmutan</span></div>""",
                es_grafica(α.dom) ? animar_morfismo(α) : "", tabla_componentes(α), "</div>")
        else
            print(io, """<div class="instancia"><div class="instancia-titulo">No es un morfismo <span class="mal">✗</span></div><div class="problemas"><ul>""",
                join(["<li>$(en_linea(m))</li>" for m in malos]), "</ul></div>", tabla_componentes(α), "</div>")
        end
    end

    "Galería de morfismos (se dibujan a lo más 12)."
    function Base.show(io::IO, ::MIME"text/html", lista::AbstractVector{Morfismo})
        isempty(lista) && return print(io, """<div class="vacio">∅ — no hay ningún morfismo (la lista está vacía)</div>""")
        tarjetas = [("<div class=\"galeria-morfismo\">($k)" * (es_grafica(α.dom) ? animar_morfismo(α; ancho = 460) : tabla_componentes(α)) * "</div>") for (k, α) in enumerate(first(lista, 12))]
        extra = length(lista) > 12 ? " (se muestran 12)" : ""
        print(io, """<div class="contador">$(cuantos(length(lista), "morfismo", "morfismos"))$extra</div><div class="galeria-morfismos">$(join(tarjetas))</div>""")
    end

    # ═════════════ PUSHOUT ANIMADO ═════════════
    function animar_pushout(po; dur = 7.0)
        X, Y, P = po.iX.dom, po.iY.dom, po.objeto
        pX, pY = encajar(posiciones_de(X), 20, 20, 250, 260), encajar(posiciones_de(Y), 290, 20, 250, 260)
        pP = posiciones_de(P)
        gP = geo_de_flechas(P, pP)
        dirigida = !haskey(X.fun, :inv)
        en_K = Set(vcat([(1, v) for v in po.f.comp[:V]], [(2, v) for v in po.g.comp[:V]]))
        io = IOBuffer()
        tiempos = "0;0.22;0.5;0.8;1"
        for (lado, Z, pZ, i, desfase) in ((1, X, pX, po.iX, 0), (2, Y, pY, po.iY, 5))
            gZ = geo_de_flechas(Z, pZ)
            for a in aristas_visibles(Z)
                g0, g1 = gZ[a], gP[i.comp[:A][a]]
                col = es_refl(Z, a) ? TENUE : color_de(a + desfase)
                print(io, "<path d=\"", trazo(g0), "\" fill=\"none\" stroke=\"", col, "\" stroke-width=\"2\" opacity=\".9\">",
                    anim("d", trazo(g0), trazo(g1); dur = dur, tiempos = tiempos), "</path>")
                dirigida && print(io, "<path d=\"", punta(g0), "\" fill=\"", col, "\">", anim("d", punta(g0), punta(g1); dur = dur, tiempos = tiempos), "</path>")
            end
            for v in 1:Z.tam[:V]
                (x0, y0), (x1, y1) = pZ[v], pP[i.comp[:V][v]]
                anillo = (lado, v) in en_K ? "#c9a227" : "white"
                print(io, """<circle cx="$(f2(x0))" cy="$(f2(y0))" r="$RV" fill="$(color_de(v + desfase))" stroke="$anillo" stroke-width="3" opacity=".93">""",
                    anim("cx", f2(x0), f2(x1); dur = dur, tiempos = tiempos), anim("cy", f2(y0), f2(y1); dur = dur, tiempos = tiempos), "</circle>")
            end
        end
        print(io, texto_svg(145, 298, "X"; estilo = "italic", color = "#7a7468"), texto_svg(415, 298, "Y"; estilo = "italic", color = "#7a7468"))
        lienzo_svg(String(take!(io)); ancho = 560, alto = 310, anim = true)
    end

    function Base.show(io::IO, ::MIME"text/html", po::Pushout)
        P = po.objeto
        resumen = join(["$(P.tam[o]) en $o" for o in P.esquema.objetos], ", ")
        print(io, """<div class="instancia"><div class="instancia-titulo">Pushout de <i>X</i> ← <i>K</i> → <i>Y</i> <span class="ok">$resumen</span></div>""",
            es_grafica(P) ? animar_pushout(po) : tabla_datos(P),
            """<div class="mini-titulo">Los vértices con anillo dorado vienen de la parte común K: por eso se funden.</div></div>""")
    end

    # ═════════════ REESCRITURA ANIMADA ═════════════
    function animar_reescritura(rw; dur = 9.0)
        G, H, m = rw.m.cod, rw.H, rw.m
        pG = encajar(posiciones_de(G), 0, 30, 560, 280)
        crudoG, crudoH = posiciones_de(G), posiciones_de(H)
        xs, ys = first.(crudoG), last.(crudoG)
        bw, bh = max(maximum(xs) - minimum(xs), 1.0), max(maximum(ys) - minimum(ys), 1.0)
        e = min((560 - 80) / bw, (280 - 80) / bh, 1.0)
        mx, my = (maximum(xs) + minimum(xs)) / 2, (maximum(ys) + minimum(ys)) / 2
        trans(p) = (280 + e * (p[1] - mx), 170 + e * (p[2] - my))
        pH = [trans(p) for p in crudoH]
        gG, gH = geo_de_flechas(G, pG), geo_de_flechas(H, pH)
        dirigida = !haskey(G.fun, :inv)
        borr = rw.borrados
        g_a_h(o, y) = (d = findfirst(==(y), rw.conservados[o]); d === nothing ? 0 : rw.de_D[o][d])
        nuevos_V = [h for h in 1:H.tam[:V] if !(h in rw.de_D[:V])]
        nuevos_A = [h for h in 1:H.tam[:A] if !(h in rw.de_D[:A])]
        io = IOBuffer()
        T = "0;0.12;0.3;0.42;0.55;0.67;0.92;1"
        for (k, txt) in enumerate(["1. Encontrar la coincidencia", "2. Borrar (complemento del pushout)", "3. Pegar lo nuevo (pushout)"])
            vals = k == 1 ? "1;1;1;0;0;0;0;1" : k == 2 ? "0;0;0;1;0;0;0;0" : "0;0;0;0;1;1;1;0"
            print(io, """<text x="280" y="20" text-anchor="middle" font-size="15" font-style="italic" fill="$TINTA" font-family="$FUENTE_SVG" opacity="0">$txt<animate attributeName="opacity" values="$vals" keyTimes="$T" dur="$(dur)s" repeatCount="indefinite"/></text>""")
        end
        for v in Set(m.comp[:V])
            x, y = pG[v]
            print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="22" fill="#e9c46a" opacity="0">""",
                anim_valores("opacity", (0, 0.6, 0.6, 0, 0, 0, 0, 0), split(T, ";"); dur = dur), "</circle>")
        end
        for a in aristas_visibles(G)
            col = es_refl(G, a) ? TENUE : TINTA
            if a in borr[:A]
                op = anim_valores("opacity", (1, 1, 1, 0, 0, 0, 0, 1), split(T, ";"); dur = dur)
                print(io, "<path d=\"", trazo(gG[a]), "\" fill=\"none\" stroke=\"#b03a2e\" stroke-width=\"2.2\">", op, "</path>")
                dirigida && print(io, "<path d=\"", punta(gG[a]), "\" fill=\"#b03a2e\">", op, "</path>")
            else
                h = g_a_h(:A, a)
                tiempos = "0;0.42;0.55;0.92;1"
                print(io, "<path d=\"", trazo(gG[a]), "\" fill=\"none\" stroke=\"", col, "\" stroke-width=\"1.9\">", anim("d", trazo(gG[a]), trazo(gH[h]); dur = dur, tiempos = tiempos), "</path>")
                dirigida && print(io, "<path d=\"", punta(gG[a]), "\" fill=\"", col, "\">", anim("d", punta(gG[a]), punta(gH[h]); dur = dur, tiempos = tiempos), "</path>")
            end
        end
        for h in nuevos_A
            op = anim_valores("opacity", (0, 0, 0, 0, 0, 1, 1, 0), split(T, ";"); dur = dur)
            print(io, "<path d=\"", trazo(gH[h]), "\" fill=\"none\" stroke=\"#2b6a4a\" stroke-width=\"2.3\" opacity=\"0\">", op, "</path>")
            dirigida && print(io, "<path d=\"", punta(gH[h]), "\" fill=\"#2b6a4a\" opacity=\"0\">", op, "</path>")
        end
        for v in 1:G.tam[:V]
            x, y = pG[v]
            if v in borr[:V]
                print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="$RV" fill="#b03a2e" stroke="white" stroke-width="1.6">""",
                    anim_valores("opacity", (1, 1, 1, 0, 0, 0, 0, 1), split(T, ";"); dur = dur), "</circle>")
            else
                print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="$RV" fill="$(color_de(v))" stroke="white" stroke-width="1.6"/>""")
                print(io, etiqueta_vertice(G, v, x, y))
            end
        end
        for h in nuevos_V
            x, y = pH[h]
            print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="$RV" fill="#2b6a4a" stroke="white" stroke-width="1.6" opacity="0">""",
                anim_valores("opacity", (0, 0, 0, 0, 0, 1, 1, 0), split(T, ";"); dur = dur), "</circle>")
        end
        lienzo_svg(String(take!(io)); ancho = 560, alto = 320, anim = true)
    end

    function Base.show(io::IO, ::MIME"text/html", rw::Reescritura)
        nb = sum(length(v) for v in values(rw.borrados))
        G, H = rw.m.cod, rw.H
        print(io, """<div class="instancia"><div class="instancia-titulo">Reescritura de doble pushout <span class="ok">✓ se cumplen las condiciones de pegado</span></div>""",
            es_grafica(H) ? animar_reescritura(rw) : "<div class=\"lado-a-lado\"><div><div class=\"mini-titulo\">Antes (G)</div>$(tabla_datos(G))</div><div><div class=\"mini-titulo\">Después (H)</div>$(tabla_datos(H))</div></div>",
            """<div class="mini-titulo">En rojo lo que se borra, en verde lo que se agrega. $(nb == 1 ? "Se borró 1 elemento" : "Se borraron $nb elementos"). Resultado: """ *
            join(["$(H.tam[o]) en $o" for o in H.esquema.objetos], ", ") * ".</div></div>")
    end

    function Base.show(io::IO, ::MIME"text/html", f::FallaDPO)
        print(io, """<div class="falla"><b>La regla no se puede aplicar con esta coincidencia:</b> no existe el complemento del pushout.<ul>""",
            join(["<li>$(en_linea(p))</li>" for p in f.problemas]),
            "</ul><i>No es un caso especial programado a mano: por el Teorema 7.4, el complemento existe exactamente cuando se cumplen las dos condiciones de pegado.</i></div>")
    end

    function Base.show(io::IO, ::MIME"text/html", c::Comprobacion)
        filas = join(["<tr><td class=\"$(f[3] == 0 ? "ok" : "mal")\">$(f[3] == 0 ? "✓" : "✗")</td><td>$(en_linea(f[1]))</td><td class=\"num\">$(cuantos(f[2], "caso", "casos"))$(f[3] > 0 ? " · $(cuantos(f[3], "falla", "fallas"))" : "")</td></tr>" for f in c.filas])
        print(io, """<div class="comprobacion"><div class="comp-titulo">Comprobación: $(en_linea(c.titulo))</div><table>$filas</table></div>""")
    end
end;

# ╔═╡ 1479c3a0-b56e-54fe-8bf5-749682357566
begin
    # ═════════════ DIBUJOS DE SISTEMAS DINÁMICOS ═════════════
    "Anima una gráfica viva: el color de cada vértice cambia según `historia`."
    function animar_focos(G, historia, color_estado; paso = 0.9, ancho = 520, alto = 260)
        pos = encajar(posiciones_de(G), 0, 0, ancho, alto)
        n = length(historia)
        dur = paso * n
        tiempos = join([string(round((k - 1) / n; digits = 4)) for k in 1:n], ";")
        io = IOBuffer()
        print(io, svg_grafica(G; pos = pos, color_v = v -> "#3a3a44", color_a = a -> "#55555f"))
        for v in 1:G.tam[:V]
            x, y = pos[v]
            colores = join([color_estado(v, h[v]) for h in historia], ";")
            print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="$(RV + 4)" fill="$(color_estado(v, historia[1][v]))" stroke="#1b1b1f" stroke-width="1.2"><animate attributeName="fill" values="$colores" keyTimes="$tiempos" dur="$(dur)s" calcMode="discrete" repeatCount="indefinite"/></circle>""")
            print(io, etiqueta_vertice(G, v, x, y))
        end
        HTML(lienzo_svg(String(take!(io)); ancho = ancho, alto = alto, anim = true))
    end

    "Gráfica de líneas que se dibuja sola."
    function grafica_animada(t, series, nombres, colores; dur = 7.0, ylims = nothing, titulo = "", ejey = "")
        W, H, m = 600, 300, 46
        lo, hi = ylims === nothing ? (minimum(minimum.(series)), maximum(maximum.(series))) : ylims
        lo, hi = Float64(lo), Float64(hi)
        hi == lo && (hi = lo + 1)
        X(x) = m + (W - 2m) * (x - first(t)) / (last(t) - first(t))
        Y(y) = H - m + 10 - (H - 2m) * (y - lo) / (hi - lo)
        io = IOBuffer()
        print(io, """<line x1="$m" y1="$(H - m + 10)" x2="$(W - m + 10)" y2="$(H - m + 10)" stroke="$TINTA" stroke-width=".8"/><line x1="$m" y1="22" x2="$m" y2="$(H - m + 10)" stroke="$TINTA" stroke-width=".8"/>""")
        lo < 0 < hi && print(io, """<line x1="$m" y1="$(f2(Y(0)))" x2="$(W - m + 10)" y2="$(f2(Y(0)))" stroke="$TENUE" stroke-dasharray="3 3"/>""")
        for v in (lo, (lo + hi) / 2, hi)
            print(io, texto_svg(m - 6, Y(v) + 4, round(v; digits = 1); tam = 12, ancla = "end"))
        end
        print(io, texto_svg(W - m + 10, H - m + 30, "tiempo"; tam = 13, ancla = "end", estilo = "italic"))
        isempty(ejey) || print(io, texto_svg(m + 4, 16, ejey; tam = 13, ancla = "start", estilo = "italic"))
        for (k, s) in enumerate(series)
            d = "M " * join(["$(f2(X(t[i]))) $(f2(Y(s[i])))" for i in eachindex(s)], " L ")
            print(io, """<path d="$d" fill="none" stroke="$(colores[k])" stroke-width="2" stroke-linejoin="round" pathLength="1" stroke-dasharray="1" stroke-dashoffset="1"><animate attributeName="stroke-dashoffset" values="1;0;0" keyTimes="0;0.8;1" dur="$(dur)s" repeatCount="indefinite"/></path>""")
            print(io, """<line x1="$(W - m - 112)" y1="$(10 + 17k)" x2="$(W - m - 92)" y2="$(10 + 17k)" stroke="$(colores[k])" stroke-width="2.2"/>""",
                texto_svg(W - m - 86, 14 + 17k, escapar_html(nombres[k]); tam = 13, ancla = "start"))
        end
        isempty(titulo) || print(io, texto_svg(W / 2, H - 2, escapar_html(titulo); tam = 13, estilo = "italic"))
        HTML(lienzo_svg(String(take!(io)); ancho = W, alto = H, anim = true))
    end

    "Retrato de fase: la trayectoria (x(t), y(t)) se dibuja sola y un punto la recorre."
    function retrato_fase(xs, ys; dur = 7.0, nombres = ("x", "y"), color = "#5d3a8c")
        W, H, m = 360, 300, 40
        x0, x1 = 0.0, maximum(xs) * 1.08
        y0, y1 = 0.0, maximum(ys) * 1.08
        X(x) = m + (W - 2m) * (x - x0) / (x1 - x0)
        Y(y) = H - m - (H - 2m) * (y - y0) / (y1 - y0)
        id = "fase" * string(rand(UInt32); base = 16)
        d = "M " * join(["$(f2(X(xs[i]))) $(f2(Y(ys[i])))" for i in eachindex(xs)], " L ")
        svg = """<line x1="$m" y1="$(H - m)" x2="$(W - 14)" y2="$(H - m)" stroke="$TINTA" stroke-width=".8"/><line x1="$m" y1="14" x2="$m" y2="$(H - m)" stroke="$TINTA" stroke-width=".8"/>""" *
            texto_svg(W - 14, H - m + 20, nombres[1]; tam = 13, ancla = "end", estilo = "italic") *
            texto_svg(m + 6, 22, nombres[2]; tam = 13, ancla = "start", estilo = "italic") *
            """<path id="$id" d="$d" fill="none" stroke="$color" stroke-width="1.9" pathLength="1" stroke-dasharray="1" stroke-dashoffset="1"><animate attributeName="stroke-dashoffset" values="1;0;0" keyTimes="0;0.8;1" dur="$(dur)s" repeatCount="indefinite"/></path>
            <circle r="6" fill="$color" stroke="white" stroke-width="1.6"><animateMotion dur="$(dur)s" repeatCount="indefinite" keyPoints="0;1;1" keyTimes="0;0.8;1" calcMode="linear"><mpath href="#$id"/></animateMotion></circle>"""
        HTML(lienzo_svg(svg; ancho = W, alto = H, anim = true))
    end

    "Dibuja un diagrama de cableado no dirigido: cajas abajo, uniones arriba, cables entre ellos."
    function dibujar_diagrama(d, nombres_cajas; titulo = "")
        W, H = 600, 290
        uniones = unique(vcat(d.exterior, d.cajas...))
        nu, nb = length(uniones), length(d.cajas)
        ux = Dict(u => 70 + (W - 140) * (k - 0.5) / nu for (k, u) in enumerate(uniones))
        col = Dict(u => color_de(k) for (k, u) in enumerate(uniones))
        uy = 105.0
        io = IOBuffer()
        print(io, """<rect x="18" y="34" width="$(W - 36)" height="$(H - 52)" rx="6" fill="none" stroke="$TINTA" stroke-width="1.1" stroke-dasharray="6 4"/>""")
        isempty(titulo) || print(io, texto_svg(30, 24, escapar_html(titulo); tam = 15, ancla = "start", estilo = "italic"))
        bw = min(140.0, (W - 60) / nb - 14)
        for (b, cables) in enumerate(d.cajas)
            cx = 30 + (W - 60) * (b - 0.5) / nb
            bx, by = cx - bw / 2, 190.0
            for (k, u) in enumerate(cables)
                px = bx + bw * k / (length(cables) + 1)
                print(io, """<path d="M $(f2(px)) $(f2(by)) C $(f2(px)) $(f2(by - 45)), $(f2(ux[u])) $(f2(uy + 45)), $(f2(ux[u])) $(f2(uy))" fill="none" stroke="$(col[u])" stroke-width="1.8"/>""")
                print(io, """<circle cx="$(f2(px))" cy="$(f2(by))" r="3.5" fill="$(col[u])"/>""")
            end
            print(io, """<rect x="$(f2(bx))" y="$(f2(by))" width="$(f2(bw))" height="52" rx="3" fill="#fbf8f1" stroke="$TINTA" stroke-width="1.2"/>""",
                texto_svg(cx, by + 31, escapar_html(nombres_cajas[b]); tam = 14, estilo = "italic"))
        end
        for u in d.exterior
            print(io, """<line x1="$(f2(ux[u]))" y1="$(f2(uy))" x2="$(f2(ux[u]))" y2="34" stroke="$(col[u])" stroke-width="1.8"/><circle cx="$(f2(ux[u]))" cy="34" r="4" fill="$(col[u])"/>""")
        end
        for u in uniones
            print(io, """<circle cx="$(f2(ux[u]))" cy="$uy" r="8" fill="$(col[u])" stroke="white" stroke-width="1.6"/>""",
                texto_svg(ux[u] + 12, uy - 10, u; tam = 14, ancla = "start", estilo = "italic", color = col[u]))
        end
        HTML(lienzo_svg(String(take!(io)); ancho = W, alto = H))
    end

    function Base.show(io::IO, ::MIME"text/html", s::Sistema)
        print(io, """<div class="instancia"><div class="instancia-titulo">Sistema abierto <span class="ok">$(cuantos(length(s.estados), "estado", "estados")) · $(cuantos(length(s.puertos), "puerto", "puertos"))</span></div><div class="tx">Estados: """,
            join(["<i>$e</i>" for e in s.estados], ", "), ". Puertos expuestos: ",
            join(["<i>$(s.estados[p])</i>" for p in s.puertos], ", "), ".</div></div>")
    end
end;

# ╔═╡ 31c0e510-db94-5198-89ab-2e4ec22acb50
begin
    "Dibuja `X` como si se hubiera borrado el vértice `k` sin tocar las flechas: las que lo usaban quedan colgando."
    function dibujar_rota(X, k)
        pos = encajar(posiciones_de(X), 0, 0, 520, 200)
        geos = geo_de_flechas(X, pos)
        io = IOBuffer()
        for a in 1:X.tam[:A]
            g = geos[a]
            rota = X.fun[:src][a] == k || X.fun[:tgt][a] == k
            col = rota ? "#b03a2e" : color_de(a)
            print(io, "<path d=\"", trazo(g), "\" fill=\"none\" stroke=\"", col, "\" stroke-width=\"1.9\"", rota ? " stroke-dasharray=\"5 3\"" : "", ">")
            rota && print(io, anim_valores("opacity", (1, 0.25, 1), (0, 0.5, 1); dur = 2.4))
            print(io, "</path><path d=\"", punta(g), "\" fill=\"", col, "\"/>")
        end
        for v in 1:X.tam[:V]
            x, y = pos[v]
            if v == k
                print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="$RV" fill="none" stroke="#b03a2e" stroke-width="1.4" stroke-dasharray="3 2.5"/>""",
                    texto_svg(x, y + 6, "?"; tam = 18, color = "#b03a2e"))
            else
                print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="$RV" fill="$(color_de(v))" stroke="white" stroke-width="1.6"/>""", etiqueta_vertice(X, v, x, y))
            end
        end
        rotas = count(a -> X.fun[:src][a] == k || X.fun[:tgt][a] == k, 1:X.tam[:A])
        juntar(HTML(lienzo_svg(String(take!(io)); alto = 200, anim = true)),
            HTML("<div class=\"mini-titulo\">Se borró <i>$(X.nombres[k])</i>: $(cuantos(rotas, "flecha quedó", "flechas quedaron")) sin origen o sin destino.</div>"))
    end

    ESCALERA_HTML = HTML("""<svg class="anim" viewBox="0 0 560 230" width="560" height="230" role="img" aria-label="Escalera de la abstracción">""" * join(["""
        <rect x="$(18 + 135(k-1))" y="$(170 - 42(k-1))" width="120" height="$(42 + 42(k-1))" fill="#f4efe4" stroke="#1b1b1f" stroke-width="1.1"/>
        <text x="$(78 + 135(k-1))" y="$(196 - 42(k-1))" text-anchor="middle" font-size="22" font-weight="bold" fill="#1b1b1f" font-family="$FUENTE_SVG">$k</text>
        <text x="$(78 + 135(k-1))" y="$(220 - 42(k-1))" text-anchor="middle" font-size="15" font-style="italic" fill="#1b1b1f" font-family="$FUENTE_SVG">$t</text>"""
        for (k, t) in enumerate(["dibujos", "datos", "planos", "universos"])]) * """
        <circle r="8" fill="#b03a2e" stroke="white" stroke-width="1.5">
          <animateMotion dur="8s" repeatCount="indefinite" calcMode="linear" keyTimes="0;0.2;0.25;0.45;0.5;0.7;0.75;0.95;1"
            values="78,160; 78,160; 213,118; 213,118; 348,76; 348,76; 483,34; 483,34; 78,160"/>
        </circle></svg>""")
end;

# ╔═╡ ae375977-c55b-5c20-a069-2d661cd446fa
begin
    "Los dos mapas de una gráfica, como en el libro: flechas a la izquierda, vértices a la derecha."
    function mapas_origen_destino(X; dur = 5.0)
        m, n = X.tam[:A], X.tam[:V]
        alto = 40 + 34max(m, n)
        io = IOBuffer()
        for (k, (nombre, f)) in enumerate((("origen", :src), ("destino", :tgt)))
            x0 = 20 + 270(k - 1)
            print(io, texto_svg(x0 + 115, 22, "mapa de $nombre"; tam = 15, estilo = "italic"))
            ya(a) = 40 + 34(a - 1) + 17(max(m, n) - m)
            yv(v) = 40 + 34(v - 1) + 17(max(m, n) - n)
            for a in 1:m
                y1, y2 = ya(a), yv(X.fun[f][a])
                print(io, """<path d="M $(x0 + 62) $(f2(y1)) C $(x0 + 120) $(f2(y1)), $(x0 + 130) $(f2(y2)), $(x0 + 186) $(f2(y2))" fill="none" stroke="$(color_de(a))" stroke-width="1.6" stroke-dasharray="4 3" pathLength="1">""",
                    """<animate attributeName="stroke-dasharray" values="0 1;1 0;1 0" keyTimes="0;0.5;1" dur="$(dur)s" repeatCount="indefinite"/></path>""")
            end
            for a in 1:m
                y = ya(a)
                print(io, """<rect x="$(x0 + 6)" y="$(f2(y - 12))" width="56" height="24" rx="3" fill="#fbf8f1" stroke="#1b1b1f" stroke-width=".9"/>""",
                    """<path d="M $(x0 + 32) $(f2(y + 6)) L $(x0 + 54) $(f2(y - 6))" stroke="$(color_de(a))" stroke-width="2"/><path d="M $(x0 + 56) $(f2(y - 7)) L $(x0 + 48) $(f2(y - 6)) L $(x0 + 53) $(f2(y))Z" fill="$(color_de(a))"/>""",
                    texto_svg(x0 + 20, y + 5, a; tam = 14))
            end
            for v in 1:n
                y = yv(v)
                print(io, """<circle cx="$(x0 + 200)" cy="$(f2(y))" r="12" fill="$(color_de(v))" stroke="white" stroke-width="1.4"/>""", texto_svg(x0 + 200, y + 4.5, v; tam = 13, color = "white"))
            end
        end
        HTML(lienzo_svg(String(take!(io)); ancho = 560, alto = alto, anim = true))
    end

    "Datos «vértices primero»: vértices a la izquierda, flechas a la derecha; en rojo las flechas con 0 o con 2+ orígenes."
    function mapa_vertices_primero(origen_de, n_flechas)
        n = length(origen_de)
        alto = 50 + 34max(n, n_flechas)
        cuenta = [count(l -> a in l, origen_de) for a in 1:n_flechas]
        io = IOBuffer()
        print(io, texto_svg(150, 22, "«¿de qué flechas eres origen?»"; tam = 15, estilo = "italic"))
        yv(v) = 46 + 34(v - 1) + 17(max(n, n_flechas) - n)
        ya(a) = 46 + 34(a - 1) + 17(max(n, n_flechas) - n_flechas)
        for (v, lista) in enumerate(origen_de), a in lista
            print(io, """<path d="M 92 $(f2(yv(v))) C 150 $(f2(yv(v))), 170 $(f2(ya(a))), 228 $(f2(ya(a)))" fill="none" stroke="$(color_de(v))" stroke-width="1.6" stroke-dasharray="4 3"/>""")
        end
        for v in 1:n
            print(io, """<circle cx="80" cy="$(f2(yv(v)))" r="12" fill="$(color_de(v))" stroke="white" stroke-width="1.4"/>""", texto_svg(80, yv(v) + 4.5, v; tam = 13, color = "white"))
        end
        for a in 1:n_flechas
            mal = cuenta[a] != 1
            col = mal ? "#b03a2e" : TINTA
            print(io, """<rect x="230" y="$(f2(ya(a) - 12))" width="56" height="24" rx="3" fill="$(mal ? "#f6dedc" : "#fbf8f1")" stroke="$col" stroke-width="$(mal ? 1.6 : 0.9)"/>""",
                texto_svg(246, ya(a) + 5, a; tam = 14, color = col),
                texto_svg(300, ya(a) + 5, cuenta[a] == 0 ? "0 orígenes: colgante" : cuenta[a] == 1 ? "1 origen ✓" : "$(cuenta[a]) orígenes: ¡mutante!"; tam = 13, ancla = "start", estilo = "italic", color = col))
        end
        HTML(lienzo_svg(String(take!(io)); ancho = 520, alto = alto))
    end
end;

# ╔═╡ bc5864cd-afe9-5511-a5f1-5041ce92322b
begin
    "Animación de una «flecha gorda»: las conexiones del mapa `f` se juntan en un solo tubo."
    function flecha_gorda_animada(X, f::Symbol; dur = 7.0)
        dom, cod = flecha_de(X.esquema, f).dom, flecha_de(X.esquema, f).cod
        m, n = X.tam[dom], X.tam[cod]
        H = 40 + 34max(m, n)
        yd(a) = 30 + 34(a - 1) + 17(max(m, n) - m)
        yc(v) = 30 + 34(v - 1) + 17(max(m, n) - n)
        ym = (30 + 30 + 34(max(m, n) - 1)) / 2
        T = "0;0.25;0.55;0.92;1"
        io = IOBuffer()
        for a in 1:m
            y1, y2 = yd(a), yc(X.fun[f][a])
            d0 = "M 110 $(f2(y1)) C 220 $(f2(y1)), 300 $(f2(y2)), 410 $(f2(y2))"
            d1 = "M 110 $(f2(ym)) C 220 $(f2(ym)), 300 $(f2(ym)), 410 $(f2(ym))"
            print(io, """<path d="$d0" fill="none" stroke="$(color_de(a))" stroke-width="1.6"><animate attributeName="d" values="$d0;$d0;$d1;$d1;$d0" keyTimes="$T" dur="$(dur)s" repeatCount="indefinite"/></path>""")
        end
        caja = anim_valores("opacity", (1, 1, 0, 0, 1), split(T, ";"); dur = dur)
        for a in 1:m
            print(io, """<g>$caja<rect x="62" y="$(f2(yd(a) - 12))" width="48" height="24" rx="3" fill="#fbf8f1" stroke="$TINTA" stroke-width=".9"/>""", texto_svg(86, yd(a) + 5, a; tam = 14), "</g>")
        end
        for v in 1:n
            print(io, """<g>$caja<circle cx="422" cy="$(f2(yc(v)))" r="12" fill="$(color_de(v))" stroke="white" stroke-width="1.4"/>""", texto_svg(422, yc(v) + 4.5, v; tam = 13, color = "white"), "</g>")
        end
        gorda = anim_valores("opacity", (0, 0, 1, 1, 0), split(T, ";"); dur = dur)
        print(io, """<g opacity="0">$gorda
            <path d="M 120 $(f2(ym)) L 382 $(f2(ym))" stroke="#1d4f91" stroke-opacity=".2" stroke-width="16" stroke-linecap="round"/>
            <path d="M 120 $(f2(ym)) L 382 $(f2(ym))" stroke="#1d4f91" stroke-width="2"/><path d="M 398 $(f2(ym)) L 380 $(f2(ym - 8)) L 385 $(f2(ym)) L 380 $(f2(ym + 8)) Z" fill="#1d4f91"/>
            <circle cx="80" cy="$(f2(ym))" r="30" fill="#f4efe4" stroke="$TINTA" stroke-width="1.3"/>""", texto_svg(80, ym + 6, dom; tam = 18, estilo = "italic"),
            """<circle cx="430" cy="$(f2(ym))" r="30" fill="#f4efe4" stroke="$TINTA" stroke-width="1.3"/>""", texto_svg(430, ym + 6, cod; tam = 18, estilo = "italic"),
            texto_svg(255, ym - 16, f; tam = 17, estilo = "italic", color = "#1d4f91"), "</g>")
        HTML(lienzo_svg(String(take!(io)); ancho = 520, alto = H, anim = true))
    end

    "Tres columnas V → A → V: cada vértice sigue `refl` hasta su lazo y `src` de regreso."
    function lazo_cerrado_animado(X; dur = 9.0)
        n, m = X.tam[:V], X.tam[:A]
        k3(x) = string(round(x; digits = 3))
        H = 50 + 36max(n, m)
        yv(v) = 40 + 36(v - 1) + 18(max(n, m) - n)
        ya(a) = 40 + 36(a - 1) + 18(max(n, m) - m)
        io = IOBuffer()
        print(io, texto_svg(70, 20, "V"; tam = 17, estilo = "italic"), texto_svg(260, 20, "A"; tam = 17, estilo = "italic"), texto_svg(450, 20, "V"; tam = 17, estilo = "italic"),
                  texto_svg(165, 20, "refl"; tam = 15, estilo = "italic", color = "#5d3a8c"), texto_svg(355, 20, "src"; tam = 15, estilo = "italic", color = "#1d4f91"))
        for v in 1:n
            print(io, """<path d="M 82 $(yv(v)) C 150 $(yv(v)), 180 $(ya(X.fun[:refl][v])), 236 $(ya(X.fun[:refl][v]))" fill="none" stroke="#5d3a8c" stroke-width="1.3" stroke-dasharray="4 3"/>""")
        end
        for a in 1:m
            print(io, """<path d="M 284 $(ya(a)) C 350 $(ya(a)), 380 $(yv(X.fun[:src][a])), 438 $(yv(X.fun[:src][a]))" fill="none" stroke="#1d4f91" stroke-width="1.3" stroke-dasharray="4 3"/>""")
        end
        for (x, k) in ((70, 1), (450, 2)), v in 1:n
            print(io, """<circle cx="$x" cy="$(yv(v))" r="12" fill="$(color_de(v))" stroke="white" stroke-width="1.4"/>""", texto_svg(x, yv(v) + 4.5, v; tam = 13, color = "white"))
        end
        for a in 1:m
            lazo = a in X.fun[:refl]
            print(io, """<rect x="236" y="$(ya(a) - 12)" width="48" height="24" rx="3" fill="$(lazo ? "#efe7f7" : "#fbf8f1")" stroke="$TINTA" stroke-width=".9"/>""", texto_svg(260, ya(a) + 5, a; tam = 14))
        end
        for v in 1:n
            a = X.fun[:refl][v]
            id = "lc$(v)_" * string(rand(UInt32); base = 16)
            ini, fin = (v - 1) / n, v / n
            print(io, """<path id="$id" d="M 82 $(yv(v)) C 150 $(yv(v)), 180 $(ya(a)), 236 $(ya(a)) L 284 $(ya(a)) C 350 $(ya(a)), 380 $(yv(X.fun[:src][a])), 438 $(yv(X.fun[:src][a]))" fill="none" stroke="none"/>""",
                """<circle r="6.5" fill="#c9a227" stroke="white" stroke-width="1.2" opacity="0"><animate attributeName="opacity" values="0;0;1;1;0;0" keyTimes="0;$(k3(ini));$(k3(ini + 0.01));$(k3(fin - 0.02));$(k3(fin - 0.01));1" dur="$(dur)s" repeatCount="indefinite"/>""",
                """<animateMotion dur="$(dur)s" repeatCount="indefinite" keyPoints="0;0;1;1" keyTimes="0;$(k3(ini));$(k3(fin - 0.03));1" calcMode="linear"><mpath href="#$id"/></animateMotion></circle>""")
        end
        HTML(lienzo_svg(String(take!(io)); ancho = 520, alto = H, anim = true))
    end
end;

# ╔═╡ 978326e7-304d-5fe1-b648-d29ede2a93ab
begin
    "Una gráfica dibujada en miniatura dentro de una «burbuja de pensamiento»."
    function burbuja(X, cx, cy; r = 52, escala = 0.32, color = "#f4efe4")
        pos = [(cx + escala * (x - 260), cy + escala * (y - 150)) for (x, y) in encajar(posiciones_de(X), 0, 0, 520, 300; margen = 60)]
        geos = geometrias([(X.fun[:src][a], X.fun[:tgt][a]) for a in 1:X.tam[:A]], pos; r = 5.0, sep = 10.0)
        io = IOBuffer()
        print(io, """<ellipse cx="$cx" cy="$cy" rx="$(r + 8)" ry="$r" fill="$color" stroke="$TINTA" stroke-width="1"/>""")
        for (a, g) in enumerate(geos)
            print(io, "<path d=\"", trazo(g), "\" fill=\"none\" stroke=\"", color_de(a), "\" stroke-width=\"1.3\"/>",
                "<path d=\"", punta(g; largo = 5, ancho = 2.4), "\" fill=\"", color_de(a), "\"/>")
        end
        for (v, (x, y)) in enumerate(pos)
            print(io, """<circle cx="$(f2(x))" cy="$(f2(y))" r="4.5" fill="$(color_de(v))"/>""")
        end
        String(take!(io))
    end

    function universo_animado(; dur = 12.0)
        graficas = [grafica(3, [1, 2, 2, 3], [2, 1, 3, 3]), grafica(3, [1, 2, 3], [2, 3, 1]), grafica(2, [1, 2], [2, 1]),
                    grafica(4, [1, 1, 1], [2, 3, 4]), grafica(1, [1], [1]), grafica(2, [1], [2])]
        centros = [(90, 80), (270, 60), (450, 85), (120, 215), (300, 200), (470, 220)]
        flechas = [(3, 1), (3, 2), (6, 1), (5, 2), (6, 4), (2, 5), (4, 1), (6, 3)]
        io = IOBuffer()
        for (k, (i, j)) in enumerate(flechas)
            (x1, y1), (x2, y2) = centros[i], centros[j]
            ux, uy = unitario(x2 - x1, y2 - y1)
            g = geo_flecha((x1 + 50ux, y1 + 40uy), (x2 - 50ux, y2 - 40uy), 18.0; r = 0.0)
            t0 = 0.35 + 0.05k
            print(io, """<g opacity="0"><animate attributeName="opacity" values="0;0;1;1;0" keyTimes="0;$(round(t0; digits = 3));$(round(t0 + 0.06; digits = 3));0.94;1" dur="$(dur)s" repeatCount="indefinite"/>""",
                "<path d=\"", trazo(g), "\" fill=\"none\" stroke=\"#7a7468\" stroke-width=\"1.3\" stroke-dasharray=\"5 3\"/><path d=\"", punta(g; largo = 9, ancho = 3.8), "\" fill=\"#7a7468\"/></g>")
        end
        for (k, (X, (cx, cy))) in enumerate(zip(graficas, centros))
            dx, dy = 6cos(1.3k), 6sin(1.7k)
            print(io, """<g><animateTransform attributeName="transform" type="translate" values="0 0; $(f2(dx)) $(f2(dy)); 0 0" dur="$(7 + k)s" repeatCount="indefinite"/>""", burbuja(X, cx, cy), "</g>")
        end
        HTML(lienzo_svg(String(take!(io)); ancho = 560, alto = 285, anim = true))
    end

    "El cuadrado de naturalidad de `f` en el elemento `x`, con las dos rutas animadas."
    function cuadrado_animado(α, f::Symbol, x::Int; dur = 6.0)
        X, Y = α.dom, α.cod
        F = flecha_de(X.esquema, f)
        arriba = α.comp[F.cod][X.fun[f][x]]
        abajo = Y.fun[f][α.comp[F.dom][x]]
        ok = arriba == abajo
        io = IOBuffer()
        p = Dict(:TL => (90, 60), :TR => (380, 60), :BL => (90, 230), :BR => (380, 230))
        rot(s, q; c = TINTA, t = 16) = texto_svg(q[1], q[2] + 6, s; tam = t, estilo = "italic", color = c)
        print(io, rot("$(F.dom)<tspan font-size=\"12\" dy=\"4\">X</tspan>", (40, 44); t = 14), rot("$(F.cod)<tspan font-size=\"12\" dy=\"4\">X</tspan>", (440, 44); t = 14),
                  rot("$(F.dom)<tspan font-size=\"12\" dy=\"4\">Y</tspan>", (40, 214); t = 14), rot("$(F.cod)<tspan font-size=\"12\" dy=\"4\">Y</tspan>", (440, 214); t = 14))
        flecha(a, b) = (g = geo_flecha(a, b, 0.0; r = 24.0); "<path d=\"" * trazo(g) * "\" stroke=\"$TINTA\" stroke-width=\"1.2\" fill=\"none\"/><path d=\"" * punta(g; largo = 9, ancho = 3.8) * "\" fill=\"$TINTA\"/>")
        print(io, flecha(p[:TL], p[:TR]), flecha(p[:TL], p[:BL]), flecha(p[:TR], p[:BR]), flecha(p[:BL], p[:BR]))
        print(io, rot(f, (235, 42); t = 15), rot(f, (235, 252); t = 15), rot("α<tspan font-size=\"12\" dy=\"4\">$(F.dom)</tspan>", (62, 145); t = 15), rot("α<tspan font-size=\"12\" dy=\"4\">$(F.cod)</tspan>", (410, 145); t = 15))
        print(io, rot("$x", p[:TL]; t = 20), rot("$(X.fun[f][x])", p[:TR]; t = 20), rot("$(α.comp[F.dom][x])", p[:BL]; t = 20))
        if ok
            print(io, rot("$arriba", p[:BR]; t = 20, c = "#2b6a4a"))
        else
            print(io, rot("$arriba", (p[:BR][1] + 12, p[:BR][2] - 14); t = 18, c = "#b03a2e"), rot("$abajo", (p[:BR][1] - 14, p[:BR][2] + 14); t = 18, c = "#1d4f91"))
        end
        id1, id2 = "r1" * string(rand(UInt32); base = 16), "r2" * string(rand(UInt32); base = 16)
        print(io, """<path id="$id1" d="M 110 60 L 380 60 L 380 $(ok ? 212 : 200)" fill="none"/><path id="$id2" d="M 90 80 L 90 230 L $(ok ? 362 : 352) 230" fill="none"/>""")
        for (id, c) in ((id1, "#b03a2e"), (id2, "#1d4f91"))
            print(io, """<circle r="6" fill="$c"><animateMotion dur="$(dur)s" repeatCount="indefinite" keyPoints="0;1;1" keyTimes="0;0.7;1" calcMode="linear"><mpath href="#$id"/></animateMotion></circle>""")
        end
        print(io, texto_svg(235, 300, ok ? "las dos rutas llegan a $arriba: el cuadrado conmuta" : "ruta de arriba → $arriba, ruta de abajo → $abajo: ¡se despegó!"; tam = 15, estilo = "italic", color = ok ? "#2b6a4a" : "#b03a2e"))
        HTML(lienzo_svg(String(take!(io)); ancho = 480, alto = 312, anim = true))
    end

    "Dos gráficas en burbujas y `k` flechas (morfismos) entre ellas."
    function flechas_entre(X, Y, k)
        io = IOBuffer()
        print(io, burbuja(X, 110, 130; r = 70, escala = 0.42), burbuja(Y, 430, 130; r = 70, escala = 0.42))
        for j in 1:k
            g = geo_flecha((185, 130), (355, 130), (j - (k + 1) / 2) * 42.0; r = 0.0)
            print(io, "<path d=\"", trazo(g), "\" fill=\"none\" stroke=\"$(color_de(j))\" stroke-width=\"1.8\"/><path d=\"", punta(g), "\" fill=\"$(color_de(j))\"/>")
            mx = 0.125g[1] + 0.375g[3] + 0.375g[5] + 0.125g[7]; my = 0.125g[2] + 0.375g[4] + 0.375g[6] + 0.125g[8]
            print(io, texto_svg(mx, my - 6, "α<tspan font-size=\"11\" dy=\"4\">$j</tspan>"; tam = 15, estilo = "italic", color = color_de(j)))
        end
        HTML(lienzo_svg(String(take!(io)); ancho = 540, alto = 260))
    end
end;

# ╔═╡ 300b861d-c0da-53cc-84b5-a84296e959bf
"""
    visor_pegado(f, g, paso)

Muestra el estado de la unión-búsqueda de `pegar(f, g)` después de `paso` identificaciones
(primero las de vértices, luego las de flechas).
"""
function visor_pegado(f, g, paso)
    K, X, Y = f.dom, f.cod, g.cod
    S = X.esquema
    eventos = [(c, k) for c in (:V, :A) for k in 1:K.tam[c]]
    hechos = first(eventos, clamp(paso, 0, length(eventos)))
    pX, pY = encajar(posiciones_de(X), 10, 20, 250, 230), encajar(posiciones_de(Y), 290, 20, 250, 230)
    io = IOBuffer()
    print(io, svg_grafica(X; pos = pX), svg_grafica(Y; pos = pY),
        texto_svg(135, 270, "X"; estilo = "italic"), texto_svg(415, 270, "Y"; estilo = "italic"))
    for (c, k) in hechos
        if c == :V
            (x1, y1), (x2, y2) = pX[f.comp[:V][k]], pY[g.comp[:V][k]]
            print(io, """<path d="M $(f2(x1)) $(f2(y1)) Q $(f2((x1 + x2) / 2)) $(f2(min(y1, y2) - 60)) $(f2(x2)) $(f2(y2))" fill="none" stroke="#c9a227" stroke-width="2.2" stroke-dasharray="6 4"/>""")
        end
    end
    clases = Dict{Symbol,String}()
    for c in S.objetos
        nx = X.tam[c]
        padre = collect(1:nx + Y.tam[c])
        raiz(a) = (while padre[a] != a; a = padre[a]; end; a)
        for (cc, k) in hechos
            cc == c || continue
            a, b = raiz(f.comp[c][k]), raiz(nx + g.comp[c][k])
            a != b && (padre[max(a, b)] = min(a, b))
        end
        grupos = Dict{Int,Vector{Int}}()
        for e in 1:length(padre)
            push!(get!(grupos, raiz(e), Int[]), e)
        end
        nombre(e) = e <= nx ? "<i>x</i><sub>$e</sub>" : "<i>y</i><sub>$(e - nx)</sub>"
        clases[c] = join(["{" * join(nombre.(grupos[r]), ", ") * "}" for r in sort(collect(keys(grupos)))], " ")
    end
    siguiente = paso < length(eventos) ? (c = eventos[paso + 1][1]; k = eventos[paso + 1][2];
        "Siguiente: identificar <i>f</i>($(k)) = <i>x</i><sub>$(f.comp[c][k])</sub> con <i>g</i>($(k)) = <i>y</i><sub>$(g.comp[c][k])</sub> en <i>$c</i>.") :
        "Listo: estas clases son los elementos del pushout."
    HTML(lienzo_svg(String(take!(io)); ancho = 550, alto = 280) *
        """<div class="tx" style="font-size:1rem; text-align:center">Vértices: $(clases[:V])<br>Flechas: $(clases[:A])<br><i>$siguiente</i></div>""")
end;

# ╔═╡ b389432c-ec70-57c8-aca1-c5dbfe02130b
"""
    diagrama_dpo(rw)

Dibuja el doble pushout completo: arriba `L ← K → R`, abajo `G ← D → H`, con las flechas verticales.
"""
function diagrama_dpo(rw)
    regla = rw.regla
    L, K, R = regla.l.cod, regla.l.dom, regla.r.cod
    G, D, H = rw.m.cod, rw.D, rw.H
    W, h, sep = 180, 150, 30
    celdas = [(L, "L", 1, 1), (K, "K", 2, 1), (R, "R", 3, 1), (G, "G", 1, 2), (D, "D", 2, 2), (H, "H", 3, 2)]
    io = IOBuffer()
    origen(c, f) = (20 + (W + sep) * (c - 1), 20 + (h + 50) * (f - 1))
    for (X, nombre, c, f) in celdas
        x0, y0 = origen(c, f)
        print(io, """<rect x="$x0" y="$y0" width="$W" height="$h" rx="4" fill="$(f == 2 && c == 2 ? "#f6dedc" : f == 2 && c == 3 ? "#e3f1e8" : "#fbf8f1")" stroke="$TINTA" stroke-width=".9"/>""",
            texto_svg(x0 + 14, y0 + 20, nombre; tam = 17, estilo = "italic"))
        if es_grafica(X) && X.tam[:V] > 0
            print(io, """<g transform="translate($x0, $y0) scale(0.34)">""", svg_grafica(X; pos = encajar(posiciones_de(X), 20, 40, 500, 380; margen = 50)), "</g>")
        elseif X.tam[:V] == 0
            print(io, texto_svg(x0 + W / 2, y0 + h / 2 + 5, "∅"; tam = 20, color = "#7a7468"))
        end
    end
    flecha(p, q, rot) = (g = geo_flecha(p, q, 0.0; r = 0.0);
        "<path d=\"" * trazo(g) * "\" stroke=\"$TINTA\" stroke-width=\"1.2\" fill=\"none\"/><path d=\"" * punta(g; largo = 9, ancho = 3.8) * "\" fill=\"$TINTA\"/>" *
        texto_svg((p[1] + q[1]) / 2 + (p[2] == q[2] ? 0 : 12), (p[2] + q[2]) / 2 + (p[2] == q[2] ? -7 : 4), rot; tam = 14, estilo = "italic"))
    yA, yB = 20 + h / 2, 70 + h + h / 2
    print(io, flecha((20 + W + sep - 4, yA), (20 + W + 4, yA), "l"), flecha((20 + 2W + sep + 4, yA), (20 + 2W + 2sep - 4, yA), "r"),
              flecha((20 + W + sep - 4, yB), (20 + W + 4, yB), ""), flecha((20 + 2W + sep + 4, yB), (20 + 2W + 2sep - 4, yB), ""))
    for c in 1:3
        x = 20 + (W + sep) * (c - 1) + W / 2
        print(io, flecha((x, 20 + h + 3), (x, 70 + h - 3), c == 1 ? "m" : ""))
    end
    HTML(lienzo_svg(String(take!(io)); ancho = 3W + 2sep + 40, alto = 2h + 90))
end;

# ╔═╡ 257b7596-ef42-5363-a0f4-eb95e996488e
begin
    "Una caja en perspectiva isométrica cuya tapa se abre y se cierra."
    function caja_animada(; dur = 8.0)
        s, cx, cy = 92.0, 270.0, 150.0
        P(x, y, z) = (cx + (x - y) * s * cos(π / 6), cy + (x + y) * s * sin(π / 6) - z * s)
        pts(vs) = join(["$(f2(P(v...)[1])),$(f2(P(v...)[2]))" for v in vs], " ")
        tapa(θ) = [(x, y * cos(θ), 1 + y * sin(θ)) for (x, y) in ((0, 0), (1, 0), (1, 1), (0, 1))]
        angulos = vcat(zeros(3), range(0, 1.92; length = 10), fill(1.92, 4), range(1.92, 0; length = 10), zeros(2))
        tiempos = join([string(round(k / (length(angulos) - 1); digits = 3)) for k in 0:length(angulos)-1], ";")
        valores = join([pts(tapa(θ)) for θ in angulos], ";")
        io = IOBuffer()
        # interior (se ve cuando la tapa está abierta)
        print(io, """<polygon points="$(pts([(0,0,0),(1,0,0),(1,1,0),(0,1,0)]))" fill="#cdbf9f" stroke="$TINTA" stroke-width="1"/>""",
                  """<polygon points="$(pts([(0,0,0),(1,0,0),(1,0,1),(0,0,1)]))" fill="#d9cbaa" stroke="$TINTA" stroke-width="1"/>""",
                  """<polygon points="$(pts([(0,0,0),(0,1,0),(0,1,1),(0,0,1)]))" fill="#e3d6b8" stroke="$TINTA" stroke-width="1"/>""")
        print(io, """<polygon points="$(pts(tapa(0.0)))" fill="#efe3c4" stroke="$TINTA" stroke-width="1.2"><animate attributeName="points" values="$valores" keyTimes="$tiempos" dur="$(dur)s" repeatCount="indefinite"/></polygon>""")
        # paredes del frente
        print(io, """<polygon points="$(pts([(1,0,0),(1,1,0),(1,1,1),(1,0,1)]))" fill="#e6d3a8" stroke="$TINTA" stroke-width="1.2"/>""",
                  """<polygon points="$(pts([(0,1,0),(1,1,0),(1,1,1),(0,1,1)]))" fill="#d8c08c" stroke="$TINTA" stroke-width="1.2"/>""")
        (x1, y1), (x2, y2) = P(0, 0, 1), P(1, 0, 1)
        print(io, """<line x1="$(f2(x1))" y1="$(f2(y1))" x2="$(f2(x2))" y2="$(f2(y2))" stroke="#b03a2e" stroke-width="3.2"/>""",
                  texto_svg((x1 + x2) / 2 + 30, (y1 + y2) / 2 - 8, "bisagra"; tam = 14, estilo = "italic", color = "#b03a2e"))
        HTML(lienzo_svg(String(take!(io)); ancho = 540, alto = 320, anim = true))
    end

    "Describe con palabras qué hay en una cocina y sobre qué está cada cosa."
    function describir_cocina(X)
        function nombre(e)
            partes = String[]
            e in X.fun[:mostrador_es] && push!(partes, "el mostrador")
            for u in 1:X.tam[:Utensilio]
                X.fun[:utensilio_es][u] == e && push!(partes, u in X.fun[:plato_es] ? "el plato" : "un utensilio")
            end
            for c in 1:X.tam[:Comida]
                X.fun[:comida_es][c] == e && push!(partes, nombre_comida(c))
            end
            isempty(partes) ? "la entidad $e" : join(partes, " = ")
        end
        function nombre_comida(c)
            cosas = vcat(["la rebanada $r" for r in 1:X.tam[:Rebanada] if X.fun[:rebanada_es][r] == c],
                         ["el queso" for q in 1:X.tam[:Queso] if X.fun[:queso_es][q] == c])
            isempty(cosas) ? "la comida $c" : join(cosas, " y ")
        end
        lineas = vcat(["<li>$(nombre_comida(c)) está sobre <b>$(nombre(X.fun[:comida_sobre][c]))</b>$(count(==(c), vcat(X.fun[:rebanada_es], X.fun[:queso_es])) > 1 ? " (¡son una sola comida!)" : "")</li>" for c in 1:X.tam[:Comida]],
                      ["<li>el plato está sobre <b>$(nombre(X.fun[:utensilio_sobre][u]))</b></li>" for u in 1:X.tam[:Utensilio]])
        HTML("""<div class="instancia"><div class="instancia-titulo">La cocina (<i>$(join(["$o: $(X.tam[o])" for o in X.esquema.objetos], ", "))</i>)</div><ul class="tx">$(join(lineas))</ul></div>""")
    end
end;

# ╔═╡ 376e0677-bfab-58cf-bec8-d393edac9101
html"""<div class="pie"><i>Pensar en relaciones</i> · NeoCats, 2026<br>Basado en <i>Relational Thinking</i> (Topos Institute) y en la tesis de S. Libkind (Stanford, 2023). Hecho con Pluto.jl, en Julia puro, sin paquetes.</div>"""

# ╔═╡ Cell order:
# ╟─bf57a44a-cd20-5ba3-a63d-9acb8bdbce03
# ╟─2e35f47d-35ad-54c2-b0b4-fb4ac9fc79d1
# ╟─def5f5ea-bea9-59d3-83a7-2026da817772
# ╟─b577b727-b2e3-5148-8919-44821267da51
# ╟─bebd8a77-11aa-5319-8bbb-e4fc238acb5f
# ╟─9e4ae011-d26e-54be-b4c1-7ca8969772f9
# ╟─01018d62-2603-59e0-b3ac-fe5c3a31c7ce
# ╠═39bc1e58-2ae2-59de-99f1-d6dca7f62ddb
# ╟─10e9f61f-ef2b-51e3-aa1b-74439436eb2f
# ╠═f6677ad1-c7b9-50c6-b51a-8002feba59ca
# ╟─c5a4052c-ae32-5a5c-8641-f5f42e247ec6
# ╠═2bc6794d-1ae1-5991-a871-f7beeda01a7d
# ╟─ce07c4a7-1dbe-5589-abbf-7939bb8cf64f
# ╠═8a9729aa-56cc-5e77-9625-fb66242a9c97
# ╟─ba738f19-9f61-5f1c-9f6d-e05e2a881fe4
# ╟─a156f93c-ba59-5884-a471-3295f1663397
# ╟─454a1e7f-d47a-53ab-a33a-04819ec4728e
# ╟─8d065de9-852b-5f74-bb6a-87733cae7d06
# ╟─a847335a-d8e6-5c98-9c92-4eb68b214c6d
# ╟─a92108ce-ce1c-5eb6-a4df-79b13cada8fe
# ╟─96f50f02-2a37-59e8-a327-aef825925957
# ╟─046a8922-00e8-5893-b7f6-6124b92d4171
# ╟─ccb1b875-f1bf-571d-bf62-dab8bd3be6c8
# ╟─f0f3f684-d519-5371-8ca4-0ed257cd4d7f
# ╠═bf791513-e005-59ca-bce7-002176af2d9e
# ╟─0df0c559-c66a-5e59-b814-bcc230e1c1cd
# ╠═a9fe1ee1-c721-5b99-8a36-3ee3509a4f97
# ╠═2a0e3159-f4e6-5a4e-b065-64664f907eac
# ╟─ad7d9d41-cdb1-52d6-99d6-12024a258be9
# ╟─4d37a97a-cb3e-5441-804e-08d2a67f9f15
# ╟─e656c50c-0568-5cd5-9d63-d0cee2b24047
# ╟─3117de57-c042-59ef-8b1f-a2ad147cfa70
# ╟─b726adcd-01d5-556e-bef9-241b55a98550
# ╟─9b1fae95-4977-5fbc-957b-449e99d207f7
# ╟─9fe0d494-697e-5c76-afe0-d9d09c4444da
# ╟─e1c09f89-8011-543c-a0f8-161ef8457fc1
# ╠═9c92e501-b269-55af-84bb-1ac4057113ce
# ╟─ee6057ec-f3ad-5a56-bee1-41c5e568b752
# ╟─e55d7307-7fa2-5215-a98a-98b3c54d2913
# ╟─451f3eab-7dca-5d46-b14b-4ca13e70128e
# ╟─62d8fc3f-10a7-5844-acd2-b4af10d7d715
# ╠═09250e63-4c79-5135-bbb9-d7f97c1d893f
# ╟─0a8321a5-3e6a-5d69-a87f-a9d9e5993cca
# ╟─73625934-6045-57f6-b6d0-3da01b46ba67
# ╠═92b258d9-f786-5073-bdf6-9287ecd03d5e
# ╟─96751e58-6841-5e1b-a21f-c02d567b477d
# ╟─e4330943-2686-5123-aca7-fb97a6e82fa0
# ╟─cd6e47a1-6bd3-5fe7-8098-f9baf3a7bb92
# ╟─cd06c528-7d45-5c0a-8536-be675826faa8
# ╟─c3427924-fa33-55ec-8015-d97fe9f65c22
# ╠═59a66855-7549-5f66-a792-c62318d47dd9
# ╟─2a5b4d42-8013-537d-96c0-db88f0fe1eeb
# ╠═5b06b190-134f-5afe-8f68-166567def24a
# ╟─75d8a794-08dd-5b64-be6d-2f16a60f7644
# ╠═285abcd7-a273-5ca8-8892-4d1c554e4b5e
# ╟─1d382c2e-1dd5-5d0b-870d-80a36ac700a0
# ╠═7ae4fcf3-f18f-5b46-a859-5c6fdfa473c8
# ╟─3fae6361-a8a3-565e-bd3c-d5777f8f8989
# ╠═5c632507-59c0-55b3-a38e-bc0674b46355
# ╟─5536c4eb-973b-5c7a-936d-8e24aea2d9c0
# ╠═638a62d4-04be-5660-8015-acae7b8acd2e
# ╟─db73dc8c-e0d3-5da3-a364-c2e23a8f3c35
# ╠═4c84594e-c3e9-5a47-b6f7-3fd83babcf89
# ╟─1238dd90-af2d-5e5e-acce-baa50ebbb553
# ╠═471bae22-36fd-5522-a275-a87c53419926
# ╠═1bde0fc1-1451-51b5-9713-92c95c25e26b
# ╟─39a777b6-f913-538d-9ecf-75b4c70fafc4
# ╟─36633a37-7852-53ab-b6d3-37c4798f40ea
# ╟─cc875300-7243-5822-8e50-bdcf019322a9
# ╠═a273256e-27fa-5283-96bc-bf7d5da43daf
# ╟─ccbe80fc-aa76-58a2-a952-c8551fa1551b
# ╟─c3a29bb2-1f2e-5c77-88f7-0b87df52356d
# ╟─b77f53ad-17f8-5c3d-a222-9279517947bd
# ╟─4e6ec6c1-cae5-5b92-a588-838936829998
# ╟─569798f4-07cb-5d1c-b9f4-a5d8776c777a
# ╟─9774c711-019d-5ae5-aa7c-d7f19f380fe0
# ╟─135e00c9-93f4-5a49-a547-6877f1d989fe
# ╠═0ddb5b22-b14f-5f2a-9da7-b1765640788d
# ╟─547da3ed-d12f-5c24-9441-398dd2337ce2
# ╠═fd41011e-76d0-570d-ae45-c4c8c2e8ebb6
# ╟─8625f40e-6048-51da-85f6-2dd0c4e024dc
# ╟─673b2471-5ea4-59bd-b732-82c5b0d9cc03
# ╟─f6d3a1f9-18de-5654-9ee5-f383fa959c9c
# ╠═1ff5c942-f94a-5bb3-b43a-680be3e72c58
# ╠═cbfa349d-31e8-5d6a-8fa6-ea4469f0750d
# ╟─339e6c59-7db1-52cf-8736-4484d74e7256
# ╟─945abfb2-776d-5b21-85b1-77b794b3fa51
# ╟─bcb5858a-cd31-5607-9b54-0a0ac7884b75
# ╟─96193dd8-a6cd-5500-93f3-7ef94e4718af
# ╟─0ed3307a-9d3b-5e74-9587-b53788998b0b
# ╟─3bfa6837-b75d-539b-a993-00017442777c
# ╠═57dd95aa-0484-5a37-9542-d87c1b3fc1d1
# ╟─5f34d7d1-952b-5e5c-b9ab-61ec8ea1ea35
# ╠═92c458c2-e82b-57e3-83f8-58abcd701b64
# ╠═4d9739c7-234f-5f8f-ace1-5f40807ddeea
# ╟─af9092a3-abe9-5fff-b9fb-df3e566431b5
# ╠═78c0814f-9a25-5a91-9a4b-feab632795ea
# ╠═9e580ac2-fc9d-554a-b288-7527de526ad0
# ╟─2b69126b-57e5-50cd-b0e5-f982e285bdda
# ╠═7680cd5f-b9b4-55f2-8d78-9e539841c742
# ╟─ecd1ad03-d252-5b50-aed2-e67d1054dfff
# ╟─32ab4ce0-ccce-5ed3-b886-f3fb3c67ed0f
# ╟─67b930ef-355c-5a30-bde8-6dff41bbc305
# ╟─1d905863-84a1-58eb-bf94-36e698e1fc48
# ╠═c8a8f115-c283-5b78-ab7a-31c7fffd7261
# ╠═f4fb16d3-8cfe-56b6-988e-64ff8326743d
# ╟─db86057a-70fb-5e4a-ab53-781d9384953e
# ╠═2d210bda-1d29-5bd3-998f-6c2c5e0a9dab
# ╟─7bd29d50-3129-5726-880c-d90b359b592a
# ╟─7d1e9067-7e8b-55b4-b14d-6ba48d3d0094
# ╠═18e42f55-7d12-532c-9746-ded6e0153d02
# ╟─03a32d68-781d-5027-8bd0-66db3067a4a5
# ╟─ce8660ad-b03c-59df-9f87-38ee9e6d7aee
# ╟─279fe285-6167-5f60-82bf-b705049f2553
# ╟─5b6290fb-81db-52f7-a111-e3dc672b7dec
# ╟─4b67f0dd-0eb8-536e-912c-914d3acdf283
# ╟─2a8ab733-b7c6-5c37-8c46-b868d9d95b65
# ╠═2a01b175-f3fa-5098-b95a-6dfc47ed959d
# ╟─0000577d-e539-575c-92b8-bc6952baf521
# ╠═6c03fbe5-eed5-57f8-9a70-b626f271a25f
# ╟─aabea449-3d88-58f2-90a7-833b2eea998a
# ╟─f768aa01-416d-5255-9a5e-9d9da2b24b15
# ╠═5f618c41-3c1a-5814-b6b5-8d0a12c29e60
# ╟─c941cc0c-2605-51cc-8d7b-73f5606a74a2
# ╟─58f3efe4-5e31-5b74-ac65-b8f240ce2c77
# ╟─6abfbeb4-d71e-54f4-873a-cb5bd5ed4843
# ╟─773b0325-9f9b-5c73-8454-809084d6f4a0
# ╠═5ea913ea-bc88-5a02-8e08-3bb5355acae9
# ╠═18850d38-1dca-5b9f-9ff8-01b32d29ac58
# ╟─c3cc38da-6918-59ca-9396-9371b3f98130
# ╠═eb6e48b0-1f08-5e8b-b3c1-58674df893e0
# ╟─126412ba-1d6e-5f4c-9bf4-e2c9177917a4
# ╠═a3c4f5f4-0a4b-5738-8665-664209489d14
# ╠═3f4617f9-d05f-529e-92bf-51dd146b3f5d
# ╟─1ab79d37-0853-5f7d-9f4b-b8a58a8d0228
# ╠═4a00b2f6-0c26-5857-8fc0-5a6d05de827c
# ╟─586f206e-2748-5563-acbb-872e7065f967
# ╠═8fd7aa01-c158-5ff4-abd2-33daca6f2299
# ╟─3b32ae86-bedc-5502-bed4-8e0101d8953f
# ╟─e2578f3c-2f15-529b-a811-ee719670dab8
# ╠═382bcb15-1017-57e0-8d0c-099038bcc102
# ╠═1af6347a-6e94-5de6-821d-3614fa068f3d
# ╟─c426b067-4c1f-584b-aff3-879b42a311bc
# ╠═59fe5b37-3342-58d8-8f49-414f4780c30c
# ╟─6aa9a8b0-bb39-5c1b-8690-887ce6ef395a
# ╠═d7199139-a604-5bdb-a9c6-7b16cade4745
# ╟─59d9b97e-c838-591b-b579-cd7ef59e98da
# ╟─9131bf1c-300c-5649-a0b3-ab1582b0d492
# ╟─64b6fb43-24b0-5453-97bc-6b0ca1c953f5
# ╟─0b058142-ce2d-5481-8234-22fc3b64ea24
# ╟─0dea632e-97ac-595e-98c9-e51e0cb320af
# ╠═ff1fe8ad-82dc-5eb9-97e3-9523f61ec58b
# ╟─0547dbd0-e438-5d41-a60e-d328964ab04c
# ╟─8701a574-e2a9-5c22-8be7-8d18144b4dc8
# ╟─64c7e805-a1af-5d0b-93b0-4434aa8859b7
# ╟─c725a938-3a66-57ae-8f3e-15a6b9861c59
# ╟─2eb1af7d-be9b-597f-954b-fe005378cff6
# ╟─7150e339-678c-58ea-8a13-372d9e75b39d
# ╟─0468a7d6-fe96-52d1-888f-aa243c18a275
# ╠═3ed712f2-267e-5c08-bb6a-dfac92b50634
# ╟─39a07172-dfce-55ab-aa44-5a45e469bc4c
# ╟─388e2772-0e13-52dd-bdc8-fd4ae19d3764
# ╟─44f2b229-f60a-5e83-9a47-aa8d5d3d1810
# ╟─892f98af-7e65-5ee4-b0e6-801afac9ef8a
# ╟─a2b148d4-1e2e-5a78-9371-c3e023a25f54
# ╟─d3608e32-7107-570a-9829-1a802803f6e9
# ╟─3286dadb-1d56-52f4-9e4a-f7ccdd2a0b39
# ╟─092fe119-095c-58d9-a9d8-27e722110e4b
# ╟─41701be6-a662-5692-acdc-3338e7142fa9
# ╠═d3dde211-12b6-55d6-9c90-1128695ce1cb
# ╟─7e197b89-2f00-519b-9e95-9ebc0d920afa
# ╟─0bf590db-27cb-57bb-a284-8a4c49b8aef4
# ╟─f642bd1c-e1c6-5fbb-8148-a6ab71f38cf5
# ╟─6866386a-e39f-57ee-8694-686c3bdd516e
# ╟─883029ef-550b-5ae4-9654-b14f45a11ca9
# ╠═b81df694-f657-5bb0-802b-62dc2538d4d1
# ╟─9c4770be-adac-5b00-814a-99383663899a
# ╟─215235c9-eed5-56e8-9b90-d42d690ed7bb
# ╟─b8a1cd21-6998-5977-92ef-13038f3fd80e
# ╠═ac0e5a97-0d80-52cd-8bc3-def1a1265d41
# ╟─d3640fd5-fa1e-5219-9e27-71610a21f945
# ╠═842f2c84-406e-5ff0-83a4-e771e8669a18
# ╟─a433fdbc-2c34-5cef-91f2-a624a6461927
# ╟─c080a283-0909-5858-aeb3-4a434f2c2329
# ╠═585fa77f-c932-598c-a44b-ed4dc70e7c25
# ╟─b9275d2b-8a8f-59f5-ab29-142d7a028028
# ╟─e0e8ffa8-c59c-5d8d-a33f-4c54e8391842
# ╠═ebe25ee2-2d34-52cf-87ac-8dbb60b2d4da
# ╟─98d3841f-6799-50f1-bb6b-900379fde91d
# ╟─3504760c-508a-5771-80d4-94db1413538b
# ╟─33982fc5-eeeb-5da5-8c58-d3b1e403575e
# ╟─d76ec8b1-f33f-5288-a995-a21c152f04de
# ╟─b5b60642-d548-53fe-80d7-bb002a55dee1
# ╠═7a7b8429-16fa-5fbd-9712-4e956de11394
# ╟─4b6bf99f-6030-5789-9fb2-10fff3231856
# ╠═09d91651-5e2b-550c-8d84-542b9bd09dca
# ╟─aa71057c-e605-5407-8688-d418be27ded3
# ╟─a7122288-56f5-5268-9287-30853564128d
# ╠═3959eca8-79d7-54a0-bb96-05f823fb3250
# ╟─bf33ae92-2a30-5fcf-a87e-c179ed2d6457
# ╠═6ce0cd29-bd32-5830-bb04-3eb5177f37ba
# ╟─b69978e4-808b-599e-bab0-1c68a3928afd
# ╠═7a54c56a-3565-5904-a830-910d8e606f3e
# ╟─7e168e42-073d-57c4-be37-ceef85c967bd
# ╠═680789e9-59c8-5a3a-b25a-caffb117aed4
# ╟─34397ce1-c3b9-5927-9ccd-2ba918e2c2f2
# ╠═a3ef55ad-d9ac-5640-9248-0569b2a7394a
# ╟─eccd5b94-8ca4-50d3-a048-e22a3d7b61d9
# ╠═46bc43a6-5bad-5cf6-b145-4e8031514f11
# ╟─e0192187-1093-5131-ae83-ea5c3de9d0c1
# ╠═59e68a57-29de-5564-a248-665ce604ad5c
# ╟─a76ace55-7d79-5ae3-8aaf-5600617d08b7
# ╠═2068a6fd-d411-5bd7-9a79-8a5ee8d57bd0
# ╟─f58fd378-e4a4-57a1-a49c-49a0f3ced396
# ╠═774d04b4-b1da-554d-bbba-ad75bad5d99e
# ╟─d22fda23-5284-5c1b-ab98-88df410b7c17
# ╠═d5a6e1db-b9b8-5375-9c27-8440661f9a68
# ╟─f76a363e-19f2-5cea-ac5a-aaa22dfe5b3b
# ╠═74ead1af-c7f3-5370-8391-5cbe1a55f751
# ╟─9d4d90ce-a7fb-5036-9998-362685d270d3
# ╠═ad8a595f-0cf7-52f6-bfc2-77a3c9f2b5d8
# ╟─c83f40a3-7c06-5ed2-afb7-073288bee72f
# ╟─149d06a5-e225-546d-b7c4-ca693411cc85
# ╟─fc9641d2-ea1c-50ca-a489-bad2ee521a80
# ╠═91bb3bd7-f38a-5218-bd4b-3c1db3798d41
# ╟─f84039b3-a818-5ac2-8337-4f0643f734a6
# ╠═58464072-0f72-5827-9fc7-4548411816cd
# ╟─998c0dd9-fe8f-58c7-a43c-f84ee92caf45
# ╠═0abc5661-b86c-5b1f-abfb-16a4f9f51644
# ╟─3bd21b02-1eeb-51cd-b467-3c293272ec46
# ╠═88210300-8e1b-564b-8cbd-909b975164a6
# ╟─07ad9969-f61f-5bf8-932b-8d331c3e9db7
# ╠═0903082f-957a-5603-8f00-a2bca4989bb3
# ╟─746ce55c-e43b-545e-889b-5bc332814b1a
# ╟─0bfdb110-00fb-5e44-9d0e-47a1c877e629
# ╟─9bf32df4-b935-5c64-9b12-c928e4e4784c
# ╟─eb047405-25c5-5351-bb78-d40c7cfc499d
# ╟─a3b3b246-9a98-5789-9594-f2edfb7dca81
# ╟─4ad2b31d-c238-5d2e-80f3-ba37cd3f3efe
# ╟─f92cc18c-4050-53a2-a3bf-b5e0c653d880
# ╠═4378c5d6-3b5a-5dcf-b959-681eaf1712cf
# ╟─7c30704b-34c8-5b21-abd5-a4dec678a5e2
# ╠═0f07d7fd-b88b-5921-9cd9-fab29777aa2b
# ╟─d60f2264-637f-5fb6-9a4c-521628d87c25
# ╠═86c57d8e-bcad-5854-ace1-5693c8274c7a
# ╠═2270f5dc-5c33-5f20-a1bf-d56348893830
# ╟─b07627fb-fbd1-5fdd-b7de-20945233e340
# ╟─e6b8be29-e122-5450-8fb0-8e816b554201
# ╠═6ed7fee1-db51-5eb8-83d8-67bfd6f0e12e
# ╟─e3e45db4-9e65-564b-9ca4-327626d6f0a4
# ╠═82f57dab-1bcd-5a5b-a141-cce3f229293b
# ╟─f89b585d-b51d-519b-b759-9f4c72325d1c
# ╠═51994fb1-81f5-58b8-9c4b-7600a30eb466
# ╟─759dd431-70fd-54fb-82f1-1210bd1c56cd
# ╠═9afab407-d72e-5d36-b451-db85341a2390
# ╟─10a9af67-55ed-5eec-8c75-d11033c41ba0
# ╠═0dde6cc9-9f5d-53d6-963b-9e0a30d99ca6
# ╟─94a091d5-d3e3-5d8f-b89d-ca539b562d36
# ╠═22d621c1-99d9-5c8d-9242-994e33e21c88
# ╟─603e578f-c3ea-557d-8540-5540d9c402fe
# ╟─174ca263-4ddf-54de-a27c-3467550cbfaa
# ╟─5c9f3f76-5ed4-5fea-9336-8f9cd6716c10
# ╠═656be427-9d54-5c11-95d4-6007e3438726
# ╟─0102f647-2fa9-555f-a953-d2ad15cd8446
# ╠═cd405b83-d024-58a1-bf1c-def67ea5af96
# ╠═9768319a-a82c-5cb9-ade3-537f5099bd38
# ╠═39e8f582-373e-5ca1-ba01-a5590c5bec7f
# ╟─513f3289-7739-55ff-b1c6-7b8689283662
# ╠═f91e3feb-a4d8-5b34-802b-01bd72e8136f
# ╟─a219e98a-2b57-5ebc-835d-af252ba0b70b
# ╠═df4bdd27-92a4-579f-8024-acf14b2e7f2b
# ╠═1d126724-7b96-5597-a9ae-5600d210f724
# ╠═6a0032dc-57cd-53f6-a823-20df1aba0d31
# ╠═7802185c-2ae6-53d3-8128-a176b5a66f6b
# ╟─6408e4a5-a780-55a1-898d-15b622798a3c
# ╠═7c10b3f4-ca42-5309-bc09-89b9232fbaf6
# ╟─cdfc29ae-0035-5951-bbc9-d25c23f113b7
# ╟─ee8f7076-fb65-5ca3-acc5-774cfd8c0d72
# ╟─1d133a2d-5eaa-548d-be5a-0439d6fef8ca
# ╟─905b6f4f-6005-5c1e-9c0e-fa8b1b4a093e
# ╟─48a901d1-6514-5d6f-bd50-478b91b3a895
# ╟─2b2ce078-d00a-5a32-bca6-05ac7f0db1e4
# ╟─67cc7686-6086-50aa-be90-b65950b31e5f
# ╟─5111cd59-202e-5745-9553-5f46019e51fc
# ╟─4b2509aa-e159-54b3-bcc0-34224193d9e2
# ╟─38f5fc7f-721c-50e1-a6da-3c48359ec943
# ╟─2d7df016-758f-5577-8ba1-25c0df486596
# ╟─1da9c72a-a651-5bf7-9073-c48ad956c59d
# ╟─0541ab2b-82fd-5ded-9c54-94bf4ead7414
# ╟─0f002c83-8edc-5d43-a14e-ae75a6764114
# ╟─f146ffc5-08d7-5d53-9de3-9b7fe037571d
# ╟─2136c842-5c9c-548c-8372-ee80ddb6ffff
# ╟─6b551182-7c2e-5909-9a31-b561a6f0589a
# ╟─33ce5819-d3e1-5264-9763-00b10161c7c5
# ╟─a3248da9-8081-5e75-b174-ac37b29195f7
# ╟─f1aa92b9-d3f5-5e61-8adb-9f6441918262
# ╟─1479c3a0-b56e-54fe-8bf5-749682357566
# ╟─31c0e510-db94-5198-89ab-2e4ec22acb50
# ╟─ae375977-c55b-5c20-a069-2d661cd446fa
# ╟─bc5864cd-afe9-5511-a5f1-5041ce92322b
# ╟─978326e7-304d-5fe1-b648-d29ede2a93ab
# ╟─300b861d-c0da-53cc-84b5-a84296e959bf
# ╟─b389432c-ec70-57c8-aca1-c5dbfe02130b
# ╟─257b7596-ef42-5363-a0f4-eb95e996488e
# ╟─376e0677-bfab-58cf-bec8-d393edac9101
