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

# ╔═╡ 37b8dbc0-1594-544e-a200-1a2a7d0bc933
html"""
<style>
@import url('https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,600;9..144,800&family=Inter:wght@400;500;600;700&display=swap');

:root {
    --julia-red: #CB3C33; --julia-green: #389826;
    --julia-purple: #9558B2; --julia-blue: #4063D8; --accent: #E1562C;
    --font-display: 'Fraunces', 'Vollkorn', Georgia, serif;
    --font-body: 'Inter', 'Alegreya Sans', system-ui, -apple-system, 'Segoe UI', sans-serif;
}

/* ---------- PAGINA: ancho centrado y legible ---------- */
body:not(.fake_class) main {
    max-width: 880px;
    margin: 0 auto;
    padding-left: 1.2rem;
    padding-right: 1.2rem;
    padding-bottom: 5rem;
}

/* ---------- TIPOGRAFIA ---------- */
pluto-output { font-family: var(--font-body); }
pluto-output p, pluto-output li { font-size: 1.04rem; line-height: 1.75; }
pluto-output h1, pluto-output h2, pluto-output h3, pluto-output h4 {
    font-family: var(--font-display);
    letter-spacing: -.02em;
    line-height: 1.15;
}
pluto-output h1 { font-size: 2.3rem; font-weight: 800; margin: .3rem 0 1rem; border: none; }
pluto-output h2 { font-size: 1.6rem; font-weight: 700; margin: 2rem 0 .8rem; padding-bottom: .35rem;
    border-bottom: 1px solid color-mix(in srgb, currentColor 18%, transparent); }
pluto-output h3 { font-size: 1.25rem; font-weight: 700; margin: 1.6rem 0 .6rem; }
pluto-output a { text-decoration-thickness: 1px; text-underline-offset: 3px; }

/* ---------- TABLAS ---------- */
pluto-output table { width: 100%; border-collapse: collapse; margin: 1rem 0; font-size: .98rem; }
pluto-output th, pluto-output td { padding: .55rem .8rem; text-align: left;
    border-bottom: 1px solid color-mix(in srgb, currentColor 14%, transparent); }
pluto-output th { font-size: .78rem; text-transform: uppercase; letter-spacing: .08em; opacity: .75; }
pluto-output tbody tr:nth-child(even) { background: color-mix(in srgb, currentColor 4%, transparent); }

/* ---------- AVISOS (tip, info, warning...) ---------- */
pluto-output .admonition {
    border-radius: 14px !important;
    border: 1px solid color-mix(in srgb, currentColor 14%, transparent) !important;
    border-left: 5px solid var(--julia-blue) !important;
    background: color-mix(in srgb, currentColor 5%, transparent) !important;
    color: inherit !important;
    margin: 1.2rem 0;
}
pluto-output .admonition-title { background: transparent !important; color: var(--julia-blue) !important;
    font-family: var(--font-body); font-weight: 800; font-size: .9rem; text-transform: uppercase; letter-spacing: .08em; }
pluto-output .admonition.tip, pluto-output .admonition.correct { border-left-color: var(--julia-green) !important; }
pluto-output .admonition.tip .admonition-title, pluto-output .admonition.correct .admonition-title { color: var(--julia-green) !important; }
pluto-output .admonition.warning, pluto-output .admonition.hint { border-left-color: #D99A00 !important; }
pluto-output .admonition.warning .admonition-title, pluto-output .admonition.hint .admonition-title { color: #D99A00 !important; }
pluto-output .admonition.danger { border-left-color: var(--julia-red) !important; }
pluto-output .admonition.danger .admonition-title { color: var(--julia-red) !important; }

/* ---------- HERO ---------- */
.hero {
    background: linear-gradient(135deg, #171725, #302342 65%, #49305D);
    color: white; padding: 3.2rem 2.6rem; border-radius: 24px;
    margin: 1rem 0 1.5rem; box-shadow: 0 14px 40px #30234244;
}
.hero .eyebrow { color: #D9C3EA; text-transform: uppercase; letter-spacing: .18em; font-size: .76rem; font-weight: 700; font-family: var(--font-body); }
.hero h1 { color: white !important; border: none !important; font-family: var(--font-display);
    font-size: clamp(2.6rem, 7vw, 4.4rem); font-weight: 800; letter-spacing: -.04em; line-height: 1.02; margin: 1rem 0; padding: 0; }
.hero p { color: #E8E2EF !important; font-family: var(--font-body); font-size: 1.1rem !important; line-height: 1.75; max-width: 600px; margin: 0; }
.julia-dots { display: flex; gap: 12px; margin: 1.4rem 0 0; }
.julia-dots span { width: 20px; height: 20px; display: inline-block; border-radius: 50%; box-shadow: 0 0 0 5px #FFFFFF12; }
.julia-dots span:nth-child(1) { background: var(--julia-red); }
.julia-dots span:nth-child(2) { background: var(--julia-green); }
.julia-dots span:nth-child(3) { background: var(--julia-purple); }
.julia-dots span:nth-child(4) { background: var(--julia-blue); }

/* ---------- ETIQUETA DE SECCION ---------- */
.kicker {
    display: flex; width: fit-content; align-items: center; gap: .6rem;
    margin: 3rem 0 .5rem; padding: .3rem .85rem .3rem .35rem;
    border: 1px solid color-mix(in srgb, var(--accent) 45%, transparent);
    border-radius: 999px; color: var(--accent);
    font-family: var(--font-body); font-size: .72rem; font-weight: 700; letter-spacing: .14em; text-transform: uppercase;
}
.kicker-num { background: var(--accent); color: white; border-radius: 999px; padding: .15rem .55rem; font-weight: 800; letter-spacing: .04em; }

/* ---------- TARJETAS ---------- */
.cards { display: grid; grid-template-columns: repeat(auto-fit, minmax(190px, 1fr)); gap: 1rem; margin: 1rem 0; font-family: var(--font-body); }
.card {
    border: 1px solid color-mix(in srgb, currentColor 16%, transparent);
    background: color-mix(in srgb, currentColor 5%, transparent);
    border-radius: 16px; padding: 1.1rem 1.2rem; line-height: 1.6; font-size: .96rem;
    transition: transform .15s ease, box-shadow .15s ease;
}
.card:hover { transform: translateY(-3px); box-shadow: 0 8px 22px #00000022; }
.card b { display: block; margin-bottom: .3rem; font-size: 1.02rem; }
.card.red { border-top: 4px solid var(--julia-red); }       .card.red b { color: var(--julia-red); }
.card.green { border-top: 4px solid var(--julia-green); }   .card.green b { color: var(--julia-green); }
.card.purple { border-top: 4px solid var(--julia-purple); } .card.purple b { color: var(--julia-purple); }
.card.blue { border-top: 4px solid var(--julia-blue); }     .card.blue b { color: var(--julia-blue); }

.footer { text-align: center; opacity: .65; padding: 2rem 0; font-family: var(--font-body);
    border-top: 1px solid color-mix(in srgb, currentColor 20%, transparent); margin-top: 3rem; }

/* ---------- DESPLEGABLES ---------- */
details.plegable {
    border: 1px solid color-mix(in srgb, currentColor 18%, transparent);
    border-radius: 12px; padding: .55rem 1rem; margin: .6rem 0;
    background: color-mix(in srgb, currentColor 4%, transparent);
    font-family: var(--font-body);
}
details.plegable summary { cursor: pointer; font-weight: 600; }
details.plegable[open] summary { margin-bottom: .5rem; }
details.plegable p { margin: .3rem 0; }

/* ---------- CONTROLES PROPIOS (sin paquetes) ---------- */
.opciones { display: flex; flex-direction: column; gap: .4rem; margin: .6rem 0; font-family: var(--font-body); }
.opc {
    display: flex; align-items: center; gap: .6rem; cursor: pointer;
    padding: .5rem .8rem; border-radius: 10px;
    border: 1px solid color-mix(in srgb, currentColor 16%, transparent);
    background: color-mix(in srgb, currentColor 3%, transparent);
    font-size: .98rem; line-height: 1.4;
}
.opc:hover { background: color-mix(in srgb, currentColor 8%, transparent); }
.opc input { accent-color: var(--julia-purple); width: 1.05rem; height: 1.05rem; margin: 0; }
.deslizador { display: inline-flex; align-items: center; gap: .8rem; vertical-align: middle; font-family: var(--font-body); }
.deslizador input { width: min(300px, 55vw); accent-color: var(--julia-purple); }
.deslizador output { min-width: 2.4rem; font-weight: 800; color: var(--julia-purple); }
.campo-texto {
    font-family: var(--font-body); font-size: 1rem; padding: .4rem .8rem; border-radius: 10px;
    border: 1px solid color-mix(in srgb, currentColor 25%, transparent);
    background: color-mix(in srgb, currentColor 4%, transparent); color: inherit;
}

/* ---------- INDICE FLOTANTE ---------- */
.indice {
    position: fixed; top: 6.5rem; right: 1.2rem; width: 210px; max-height: 70vh; overflow-y: auto;
    padding: .2rem .9rem; border-left: 2px solid color-mix(in srgb, currentColor 18%, transparent);
    font-family: var(--font-body); font-size: .82rem; line-height: 1.3;
}
.indice b { display: block; text-transform: uppercase; letter-spacing: .12em; font-size: .7rem; opacity: .6; margin-bottom: .4rem; }
.indice ol { list-style: none; margin: 0; padding: 0; }
.indice a { display: block; padding: .28rem 0; text-decoration: none; color: inherit; opacity: .75; }
.indice a:hover { opacity: 1; color: var(--accent); }
@media (max-width: 1350px) { .indice { display: none; } }

@media (max-width: 700px) {
    .hero { padding: 2rem 1.4rem; }
    pluto-output h1 { font-size: 1.9rem; }
}

/* ---------- PASOS PRIMM (pastillas) ---------- */
.paso {
    display: inline-flex; align-items: center; gap: .3rem; vertical-align: middle;
    margin-right: .4rem; padding: .08rem .62rem; border-radius: 999px;
    border: 1px solid color-mix(in srgb, var(--c) 50%, transparent);
    background: color-mix(in srgb, var(--c) 11%, transparent); color: var(--c);
    font-family: var(--font-body); font-size: .72rem; font-weight: 800;
    letter-spacing: .07em; text-transform: uppercase; line-height: 1.6;
}
.ruta-primm { display: flex; flex-wrap: wrap; gap: .5rem; margin: .8rem 0; }

/* ---------- RELOJ Y SELECTOR ---------- */
.reloj { display: inline-flex; align-items: center; gap: .8rem; vertical-align: middle; font-family: var(--font-body); }
.reloj button, .boton {
    font-family: var(--font-body); font-weight: 700; font-size: .95rem; cursor: pointer;
    padding: .4rem 1rem; border-radius: 999px; border: none; color: white; background: var(--julia-purple);
}
.reloj button:hover { filter: brightness(1.1); }
.reloj output { font-weight: 800; font-size: 1.2rem; color: var(--julia-purple); min-width: 2rem; }
select.campo-texto { cursor: pointer; }

/* ---------- GALERIA DEL HERO ---------- */
.hero-galeria { display: flex; gap: 10px; margin-top: 1.6rem; flex-wrap: wrap; }
.hero-galeria span { font-family: var(--font-body); font-size: .8rem; font-weight: 600; color: #E8E2EF;
    padding: .25rem .7rem; border-radius: 999px; background: #FFFFFF14; border: 1px solid #FFFFFF22; }
</style>

<div class="hero">
  <div class="eyebrow">NeoCats · Cuaderno interactivo</div>
  <div class="julia-dots"><span></span><span></span><span></span><span></span></div>
  <h1>Julia desde cero</h1>
  <p>Aprende a programar <b>dibujando</b>: círculos, un semáforo que cambia solo, un girasol hecho de matemáticas y fractales infinitos. Cada idea nueva se convierte en algo que puedes ver y modificar.</p>
  <div class="hero-galeria"><span>🎨 Dibuja</span><span>🚦 Decide</span><span>🌻 Repite</span><span>🌀 Sorpréndete</span></div>
</div>
"""

# ╔═╡ af950c3f-e708-5fbf-8d7d-6f77189bb3b9
html"""
<p style="margin:.4rem 0 0; font-weight:700; font-family:var(--font-body)">Tu ruta de aprendizaje · 4 bloques de unos 30 minutos (puedes hacer uno por sesión)</p>
<div class="cards">
  <div class="card red"><b>1 · Dibuja</b>Instrucciones, números y variables. Tu primer dibujo en la pantalla.<br><small style="opacity:.7">Secciones 01 a 03</small></div>
  <div class="card green"><b>2 · Decide</b>Tipos, colores, errores, tus primeras funciones y un semáforo que cambia solo.<br><small style="opacity:.7">Secciones 04 a 06</small></div>
  <div class="card purple"><b>3 · Repite</b>Bucles, patrones, un girasol e imágenes hechas de números.<br><small style="opacity:.7">Secciones 07 y 08</small></div>
  <div class="card blue"><b>4 · Sorpréndete</b>Recursión, fractales, Mandelbrot y tu póster final.<br><small style="opacity:.7">Secciones 09 a 11</small></div>
</div>
"""

# ╔═╡ 125e5e2f-1a3c-5634-a0b8-32303b9533e4
HTML(raw"""
<nav class="indice">
  <b>Contenido</b>
  <ol></ol>
  <script>
    const nav = currentScript.parentElement;
    const lista = nav.querySelector('ol');
    let firma = '';

    function construir() {
      const titulos = Array.from(document.querySelectorAll('pluto-output h1'))
        .filter(h => !h.closest('.hero'));
      const nueva = titulos.map(h => h.textContent).join('|');
      if (nueva === firma) return;
      firma = nueva;
      lista.innerHTML = '';
      titulos.forEach(h => {
        const li = document.createElement('li');
        const a = document.createElement('a');
        a.textContent = h.textContent;
        a.href = '#';
        a.addEventListener('click', e => {
          e.preventDefault();
          h.scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        li.appendChild(a);
        lista.appendChild(li);
      });
    }

    construir();
    const obs = new MutationObserver(() => {
      clearTimeout(window.__indice_timer);
      window.__indice_timer = setTimeout(construir, 400);
    });
    obs.observe(document.body, { childList: true, subtree: true });
    if (typeof invalidation !== 'undefined') invalidation.then(() => obs.disconnect());
  </script>
</nav>
""")

# ╔═╡ 901c517d-4cec-5b2a-baaf-3a5207c6f620
begin
    # Etiqueta de sección: "03 · Variables"
    function kicker(rotulo)
        num, etiqueta = split(rotulo, " · "; limit = 2)
        HTML("<span class=\"kicker\"><span class=\"kicker-num\">$num</span>$etiqueta</span>")
    end

    # Pastillas de los pasos PRIMM: Predice, Ejecuta, Investiga, Modifica, Crea
    PASOS_PRIMM = Dict(
        :idea      => ("💡", "Idea",      "#4063D8"),
        :predice   => ("🔮", "Predice",   "#9558B2"),
        :ejecuta   => ("▶️", "Ejecuta",   "#2E7D9A"),
        :investiga => ("🔍", "Investiga", "#389826"),
        :modifica  => ("🔧", "Modifica",  "#D98200"),
        :crea      => ("🎨", "Crea",      "#E1562C"),
        :comprueba => ("✅", "Comprueba", "#CB3C33"),
    )
    function paso(tipo::Symbol)
        emoji, nombre_paso, color = PASOS_PRIMM[tipo]
        HTML("<span class=\"paso\" style=\"--c:$color\">$emoji $nombre_paso</span>")
    end

    aviso(tipo, titulo, mensaje) =
        Markdown.MD(Markdown.Admonition(tipo, titulo, [Markdown.parse(mensaje)]))

    # Desplegable propio (no depende de ningún paquete)
    plegable(titulo, contenido) = HTML("<details class=\"plegable\"><summary>$titulo</summary>" *
        sprint(show, MIME("text/html"), contenido) * "</details>")

    # Muestra varias cosas, una debajo de otra, en la misma celda
    juntar(cosas...) = HTML(join([sprint(show, MIME("text/html"), c) for c in cosas]))

    pendiente() = aviso("warning", "Pendiente", "Reemplaza `missing` por tu respuesta y la celda se corregirá sola.")
    correcto(mensaje = "Muy bien, sigue con el siguiente.") = aviso("correct", "¡Correcto!", mensaje)
    incorrecto(pista) = aviso("danger", "Todavía no", pista)

    # Corrector de preguntas de opción múltiple
    function corregir(respuesta, correcta, explicacion, pista)
        if respuesta === nothing || ismissing(respuesta)
            aviso("info", "Elige una opción", "Selecciona una respuesta para ver si acertaste.")
        elseif respuesta == correcta
            aviso("correct", "¡Correcto!", explicacion)
        else
            aviso("danger", "Todavía no", pista)
        end
    end
end;

# ╔═╡ 23c0d96f-3b96-574e-b60d-18a24a49e870
begin
    # Controles interactivos propios: HTML + JavaScript puro, sin PlutoUI.
    # Así el cuaderno no instala ni precompila ningún paquete (arranca casi al instante).

    struct Entrada
        html::String
        inicial::Any
    end
    Base.show(io::IO, ::MIME"text/html", w::Entrada) = print(io, w.html)
    Base.get(w::Entrada) = w.inicial

    escapar_html(s) = replace(string(s), "&" => "&amp;", "<" => "&lt;", ">" => "&gt;", "\"" => "&quot;")

    # Campo de texto
    function campo_texto(inicial = "")
        Entrada("""<span><input class="campo-texto" type="text" value="$(escapar_html(inicial))"><script>
            const root = currentScript.parentElement;
            const campo = root.querySelector('input');
            root.value = campo.value;
            root.addEventListener('input', () => { root.value = campo.value; }, true);
        </script></span>""", string(inicial))
    end

    # Opción múltiple (se elige una); valor inicial: nothing
    function opciones(lista)
        grupo = "g" * string(rand(UInt32), base = 16)
        items = join(["""<label class="opc"><input type="radio" name="$grupo" value="$(escapar_html(o))"><span>$(escapar_html(o))</span></label>""" for o in lista])
        Entrada("""<span class="opciones">$items<script>
            const root = currentScript.parentElement;
            root.addEventListener('input', () => {
                const marcada = root.querySelector('input:checked');
                root.value = marcada ? marcada.value : undefined;
            }, true);
        </script></span>""", nothing)
    end

    # Casillas (se marcan varias); valor: lista de textos marcados
    function casillas(lista)
        items = join(["""<label class="opc"><input type="checkbox" value="$(escapar_html(o))"><span>$(escapar_html(o))</span></label>""" for o in lista])
        Entrada("""<span class="opciones">$items<script>
            const root = currentScript.parentElement;
            root.value = [];
            root.addEventListener('input', () => {
                root.value = Array.from(root.querySelectorAll('input:checked')).map(i => i.value);
            }, true);
        </script></span>""", String[])
    end

    # Deslizador con el valor visible
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

    # Lista desplegable con un valor elegido desde el principio
    function selector(lista; default = first(lista))
        items = join(["""<option value="$(escapar_html(o))" $(o == default ? "selected" : "")>$(escapar_html(o))</option>""" for o in lista])
        Entrada("""<span><select class="campo-texto">$items</select><script>
            const root = currentScript.parentElement;
            const sel = root.querySelector('select');
            root.value = sel.value;
            root.addEventListener('input', () => { root.value = sel.value; }, true);
        </script></span>""", default)
    end

    # Reloj: cuenta segundos (0, 1, 2, ...) mientras está encendido
    function reloj(; maximo = 59, intervalo = 1000)
        Entrada("""<span class="reloj"><button>▶ Iniciar</button><output>0</output><script>
            const root = currentScript.parentElement;
            const boton = root.querySelector('button');
            const salida = root.querySelector('output');
            let t = 0;
            let id = null;
            root.value = 0;
            function avanzar() {
                t = (t + 1) % ($maximo + 1);
                salida.textContent = t;
                root.value = t;
                root.dispatchEvent(new CustomEvent('input'));
            }
            boton.addEventListener('click', (e) => {
                e.preventDefault();
                if (id === null) {
                    id = setInterval(avanzar, $intervalo);
                    boton.textContent = '⏸ Pausar';
                } else {
                    clearInterval(id);
                    id = null;
                    boton.textContent = '▶ Continuar';
                }
            });
            if (typeof invalidation !== 'undefined') invalidation.then(() => clearInterval(id));
        </script></span>""", 0)
    end
end;

# ╔═╡ 2ac73a33-2257-5d63-939f-cfed28ff00da
begin
    # ═════════════ COLORES ═════════════
    """
        RGB(r, g, b)

    Un color de luz con tres canales (rojo, verde, azul), cada uno de 0 (apagado) a 1 (máximo).
    Ejemplo: `RGB(1, 0.8, 0)` es amarillo anaranjado.
    """
    struct RGB
        r::Float64
        g::Float64
        b::Float64
    end

    canal_255(x) = isfinite(x) ? round(Int, 255 * clamp(x, 0, 1)) : 0
    hex2(n) = string(n; base = 16, pad = 2)
    hexcolor(c::RGB) = "#" * hex2(canal_255(c.r)) * hex2(canal_255(c.g)) * hex2(canal_255(c.b))

    """
        mezclar(a::RGB, b::RGB, t)

    Mezcla dos colores: `t = 0` da `a`, `t = 1` da `b` y `t = 0.5` queda a la mitad.
    """
    mezclar(a::RGB, b::RGB, t) = RGB(a.r + (b.r - a.r) * t, a.g + (b.g - a.g) * t, a.b + (b.b - a.b) * t)

    # Un color se ve como una muestra
    Base.show(io::IO, ::MIME"text/html", c::RGB) = print(io,
        """<span style="display:inline-flex;align-items:center;gap:.5rem"><span style="width:26px;height:26px;border-radius:7px;background:$(hexcolor(c));border:1px solid #8885;display:inline-block"></span><code>RGB($(round(c.r, digits = 2)), $(round(c.g, digits = 2)), $(round(c.b, digits = 2)))</code></span>""")

    # Una lista de colores se ve como una paleta
    function Base.show(io::IO, ::MIME"text/html", v::AbstractVector{RGB})
        print(io, """<div style="display:flex;gap:4px;flex-wrap:wrap">""")
        for c in v
            print(io, """<span title="$(hexcolor(c))" style="width:30px;height:30px;border-radius:7px;background:$(hexcolor(c));border:1px solid #8884;display:inline-block"></span>""")
        end
        print(io, "</div>")
    end

    # Una MATRIZ de colores se ve como una IMAGEN (cada elemento es un píxel)
    function Base.show(io::IO, ::MIME"text/html", M::AbstractMatrix{RGB})
        alto, ancho = size(M)
        if alto == 0 || ancho == 0
            return print(io, "<em>(imagen vacía)</em>")
        end
        pixelado = ancho <= 160
        ancho_css = pixelado ? ancho * max(1, fld(480, ancho)) : max(ancho, 560)
        datos = IOBuffer()
        for i in axes(M, 1), j in axes(M, 2)
            c = M[i, j]
            print(datos, hex2(canal_255(c.r)), hex2(canal_255(c.g)), hex2(canal_255(c.b)))
        end
        print(io, """<div><canvas width="$ancho" height="$alto" style="width:$(ancho_css)px;max-width:100%;image-rendering:$(pixelado ? "pixelated" : "auto");border-radius:8px;display:block;border:1px solid #8883"></canvas><script>
            const lienzo = currentScript.parentElement.querySelector('canvas');
            const ctx = lienzo.getContext('2d');
            const datos = "$(String(take!(datos)))";
            const img = ctx.createImageData($ancho, $alto);
            for (let k = 0; k < $ancho * $alto; k++) {
                img.data[4 * k]     = parseInt(datos.slice(6 * k, 6 * k + 2), 16);
                img.data[4 * k + 1] = parseInt(datos.slice(6 * k + 2, 6 * k + 4), 16);
                img.data[4 * k + 2] = parseInt(datos.slice(6 * k + 4, 6 * k + 6), 16);
                img.data[4 * k + 3] = 255;
            }
            ctx.putImageData(img, 0, 0);
        </script><small style="opacity:.6;font-family:var(--font-body)">$alto filas × $ancho columnas = $(alto * ancho) píxeles</small></div>""")
    end

    # ═════════════ FORMAS ═════════════
    struct Forma
        svg::String
    end

    # Un color puede escribirse como texto ("gold", "#E1562C") o como RGB
    colorcss(c::AbstractString) = String(c)
    colorcss(c::Symbol) = String(c)
    colorcss(c::RGB) = hexcolor(c)

    svgnum(x) = string(round(Float64(x); digits = 2))

    """
        circulo(x, y, radio, color = "tomato"; borde = "none", grosor = 2, opacidad = 1)

    Un círculo con centro en `(x, y)`. Ejemplo: `circulo(250, 150, 80, "gold")`.
    """
    circulo(x, y, radio, color = "tomato"; borde = "none", grosor = 2, opacidad = 1) = Forma(
        """<circle cx="$(svgnum(x))" cy="$(svgnum(y))" r="$(svgnum(abs(radio)))" fill="$(colorcss(color))" stroke="$(colorcss(borde))" stroke-width="$(svgnum(grosor))" opacity="$(svgnum(opacidad))"/>""")

    """
        rectangulo(x, y, ancho, alto, color = "steelblue"; borde = "none", grosor = 2, opacidad = 1, redondeo = 0)

    Un rectángulo cuya esquina superior izquierda está en `(x, y)`. Ejemplo: `rectangulo(40, 200, 120, 60, "teal"; redondeo = 10)`.
    """
    rectangulo(x, y, ancho, alto, color = "steelblue"; borde = "none", grosor = 2, opacidad = 1, redondeo = 0) = Forma(
        """<rect x="$(svgnum(x))" y="$(svgnum(y))" width="$(svgnum(abs(ancho)))" height="$(svgnum(abs(alto)))" rx="$(svgnum(redondeo))" fill="$(colorcss(color))" stroke="$(colorcss(borde))" stroke-width="$(svgnum(grosor))" opacity="$(svgnum(opacidad))"/>""")

    """
        linea(x1, y1, x2, y2, color = "#222222", grosor = 2)

    Una línea del punto `(x1, y1)` al punto `(x2, y2)`. Ejemplo: `linea(0, 0, 500, 300, "orchid", 4)`.
    """
    linea(x1, y1, x2, y2, color = "#222222", grosor = 2) = Forma(
        """<line x1="$(svgnum(x1))" y1="$(svgnum(y1))" x2="$(svgnum(x2))" y2="$(svgnum(y2))" stroke="$(colorcss(color))" stroke-width="$(svgnum(grosor))" stroke-linecap="round"/>""")

    """
        texto(x, y, contenido, color = "#222222", tamaño = 20)

    Escribe `contenido` centrado en `(x, y)`. Ejemplo: `texto(250, 150, "¡Hola!", "#9558B2", 40)`.
    """
    texto(x, y, contenido, color = "#222222", tamaño = 20) = Forma(
        """<text x="$(svgnum(x))" y="$(svgnum(y))" fill="$(colorcss(color))" font-size="$(svgnum(tamaño))" font-family="Inter, system-ui, sans-serif" font-weight="600" text-anchor="middle" dominant-baseline="middle">$(escapar_html(contenido))</text>""")

    """
        poligono(puntos, color = "mediumpurple"; borde = "none", opacidad = 1)

    Une una lista de puntos `(x, y)`. Ejemplo (un triángulo): `poligono([(250, 40), (150, 260), (350, 260)], "gold")`.
    """
    function poligono(puntos, color = "mediumpurple"; borde = "none", opacidad = 1)
        pts = join([svgnum(p[1]) * "," * svgnum(p[2]) for p in puntos], " ")
        Forma("""<polygon points="$pts" fill="$(colorcss(color))" stroke="$(colorcss(borde))" opacity="$(svgnum(opacidad))"/>""")
    end

    # ═════════════ LIENZO ═════════════
    struct Lienzo
        ancho::Int
        alto::Int
        fondo::String
        cuadricula::Bool
        formas::Vector{Forma}
    end

    # Junta formas sueltas, listas de formas, matrices de formas u otros lienzos
    agregar!(lista, f::Forma) = push!(lista, f)
    agregar!(lista, L::Lienzo) = append!(lista, L.formas)
    agregar!(lista, ::Nothing) = lista
    agregar!(lista, ::Missing) = lista
    function agregar!(lista, cosas::Union{AbstractArray, Tuple})
        for c in cosas
            agregar!(lista, c)
        end
        lista
    end

    """
        lienzo(formas...; ancho = 500, alto = 300, fondo = "#FFFDF8", cuadricula = false)

    Junta formas (sueltas o en listas) en un dibujo. `(0, 0)` es la esquina superior izquierda y `y` crece hacia abajo.
    Ejemplo: `lienzo(circulo(250, 150, 80), texto(250, 150, "hola"); cuadricula = true)`.
    """
    function lienzo(cosas...; ancho = 500, alto = 300, fondo = "#FFFDF8", cuadricula = false)
        lista = Forma[]
        agregar!(lista, cosas)
        Lienzo(round(Int, ancho), round(Int, alto), colorcss(fondo), cuadricula, lista)
    end

    function Base.show(io::IO, ::MIME"text/html", L::Lienzo)
        print(io, """<svg xmlns="http://www.w3.org/2000/svg" role="img" viewBox="0 0 $(L.ancho) $(L.alto)" width="$(L.ancho)" height="$(L.alto)" style="max-width:100%;height:auto;display:block;border-radius:14px;background:$(L.fondo);border:1px solid #8883">""")
        if L.cuadricula
            for x in 0:50:L.ancho
                print(io, """<line x1="$x" y1="0" x2="$x" y2="$(L.alto)" stroke="#8885" stroke-width="1"/><text x="$(x + 3)" y="12" font-size="10" fill="#888" font-family="sans-serif">$x</text>""")
            end
            for y in 50:50:L.alto
                print(io, """<line x1="0" y1="$y" x2="$(L.ancho)" y2="$y" stroke="#8885" stroke-width="1"/><text x="3" y="$(y - 3)" font-size="10" fill="#888" font-family="sans-serif">$y</text>""")
            end
        end
        for f in L.formas
            print(io, f.svg)
        end
        print(io, "</svg>")
    end

    # Una forma suelta, o una lista de formas, se dibuja sola en un lienzo de 500 × 300
    Base.show(io::IO, m::MIME"text/html", f::Forma) = show(io, m, lienzo(f))
    Base.show(io::IO, m::MIME"text/html", v::AbstractArray{Forma}) = show(io, m, lienzo(v))
end;

# ╔═╡ 5e8c75de-915d-55cb-9a18-c290a06e3d36
begin
    "Normaliza una respuesta de texto: minúsculas y sin acentos."
    normalizar(x) = ismissing(x) ? "?" : replace(lowercase(string(x)), "í" => "i", "á" => "a", "é" => "e")

    "Dibuja cómo se reparten las galletas entre las personas."
    function dibujar_reparto(galletas, personas)
        cada_uno = galletas ÷ personas
        sobran = galletas % personas
        formas = Forma[]
        for p in 1:personas
            y = 30 + (p - 1) * 42
            push!(formas, texto(40, y, "👤 $p", "#444444", 16))
            for k in 1:cada_uno
                push!(formas, circulo(70 + 30k, y, 12, "#C68B59"; borde = "#8B5A2B"))
            end
        end
        y_sobra = 30 + personas * 42
        push!(formas, texto(42, y_sobra, "sobran", "#CB3C33", 13))
        for k in 1:sobran
            push!(formas, circulo(70 + 30k, y_sobra, 12, "#C68B59"; borde = "#CB3C33", grosor = 3))
        end
        lienzo(formas; ancho = max(500, 110 + 30 * max(cada_uno, sobran)), alto = max(300, y_sobra + 30))
    end

    "Muestra lo que responde una función para varias temperaturas."
    function termometro(f)
        colores = Dict("frio" => "#4063D8", "templado" => "#389826", "calor" => "#CB3C33")
        formas = Forma[]
        for (k, t) in enumerate(-5:5:40)
            x = 45k - 5
            etiqueta = try
                normalizar(f(t))
            catch
                "error"
            end
            push!(formas, rectangulo(x - 6, 60, 12, 90, "#E9E4DA"; redondeo = 6))
            push!(formas, circulo(x, 160, 18, get(colores, etiqueta, "#BBBBBB")))
            push!(formas, texto(x, 200, "$(t)°", "#444444", 14))
            push!(formas, texto(x, isodd(k) ? 22 : 40, etiqueta, "#444444", 11))   # alternamos la altura para que no se encimen
        end
        lienzo(formas; alto = 230)
    end

    metas_del_curso = [
        "Dibujar formas en un lienzo y explicar las coordenadas x, y",
        "Hacer operaciones y explicar la diferencia entre / y ÷ y %",
        "Crear variables y explicar que son etiquetas, no cajas",
        "Reconocer Int64, Float64, String, Bool y RGB con typeof",
        "Leer un mensaje de error sin asustarme",
        "Escribir mis propias funciones (como carita)",
        "Tomar decisiones con if (como el semáforo)",
        "Repetir con for y con comprensiones para hacer patrones",
        "Explicar que una imagen es una matriz de colores",
        "Escribir una función recursiva con su caso base",
    ]
end;

# ╔═╡ 24a57443-3122-5ead-a82c-2bc75a97e59e
md"""
$(kicker("00 · Antes de empezar"))

# Cómo estudiar este cuaderno

No necesitas saber programar: solo curiosidad y ganas de probar. Aquí vas a aprender **haciendo cosas que se ven**: cada concepto termina en un dibujo, un color o una animación que puedes cambiar.

Todas las secciones siguen el mismo camino, llamado **PRIMM** (Predice, Ejecuta, Investiga, Modifica, Crea). Es un método probado en escuelas: primero lees código que ya funciona, luego lo cambias y al final creas el tuyo.

| Paso | Qué haces |
|:-----|:----------|
| $(paso(:idea)) | Lees una explicación corta, casi siempre con una analogía |
| $(paso(:predice)) | **Antes** de ejecutar, adivinas qué va a pasar (¡equivocarte aquí ayuda a aprender!) |
| $(paso(:ejecuta)) | Ejecutas el código y comparas con tu predicción |
| $(paso(:investiga)) | Miras el código de cerca: ¿qué hace cada parte? |
| $(paso(:modifica)) | Cambias algo pequeño y observas el efecto |
| $(paso(:crea)) | Haces algo nuevo con lo que aprendiste |
| $(paso(:comprueba)) | Respondes una pregunta rápida o un ejercicio que se corrige solo |

Cuando veas **⚠️ Ojo**, es un error típico de principiantes: ábrelo para evitarlo.
"""

# ╔═╡ e4dfee34-583e-5d46-9174-5b8307ceb1aa
md"""
!!! info "Regla de oro"
    Equivocarte es parte del método. Un error en Julia no rompe nada: te explica qué pasó. Tenemos una sección completa para leerlos sin miedo.

!!! tip "Lo básico de Pluto"
    - `Shift + Enter` ejecuta la celda en la que estás.
    - Pluto es **reactivo**: si cambias un dato, todas las celdas que lo usan se recalculan solas, como en una hoja de cálculo.
    - Para ver el código de una celda oculta, haz clic en el ojo 👁 a su izquierda.
    - El panel **Live Docs** (abajo a la derecha) explica cualquier función: pon el cursor sobre su nombre.
"""

# ╔═╡ 4a35c9c4-2529-5f68-84df-592e4d3b019d
plegable("👩‍🏫 Notas para docentes", md"""
**Diseño pedagógico.** Cada sección sigue PRIMM (*Predict, Run, Investigate, Modify, Make*; Sentance, Waite y Kallia, 2019), una versión estructurada de la progresión *Use–Modify–Create* (Lee et al., 2011). En la evaluación original de PRIMM, con 493 estudiantes de 11 a 14 años en 13 escuelas, el grupo que la usó obtuvo mejores resultados que el grupo control.

**Por qué visual.** Seguimos la idea del curso *Computational Thinking* del MIT: una imagen es una matriz de colores, así que los arreglos, los bucles y las funciones producen algo que se ve. Un error de lógica se nota en el dibujo, no solo en un número.

**Sugerencias de uso:**
- Haz las predicciones **en parejas y en voz alta** antes de ejecutar: discutir el código es parte central de PRIMM.
- Un bloque (≈ 30 min) por sesión. El bloque 4 puede ser el proyecto final.
- Los ejercicios se corrigen solos; las pistas y soluciones están plegadas para fomentar el intento previo.
- El cuaderno **no instala ningún paquete**: los controles y los dibujos están hechos con Julia puro (sección *Detrás del telón*), así que abre rápido en cualquier computadora o en Binder.
""")

# ╔═╡ 749ea987-25ee-5080-abb6-c70f950b295e
md"""
$(kicker("01 · Primeros pasos"))

# Tu primer programa (y tu primer dibujo)

!!! tip "🎯 Al terminar sabrás"
    - Ejecutar una celda y mostrar un mensaje.
    - Dibujar formas en un lienzo usando coordenadas.
    - Cambiar el código y ver el resultado al instante.

$(paso(:idea)) Un programa es una lista de instrucciones para la computadora, como una receta. Casi todas las instrucciones de Julia tienen la misma forma: `nombre(datos)`. El **nombre** dice *qué hacer* y lo que va entre paréntesis dice *con qué*.

$(paso(:ejecuta)) `println` significa *imprime una línea*. Ejecuta la celda con `Shift + Enter`.
"""

# ╔═╡ 7b1a46a7-3967-5950-875b-d6c40fbbcb4b
println("¡Hola, mundo!")

# ╔═╡ 34831c1e-0a70-5b85-935d-8b56eec10b6b
md"""
$(paso(:modifica)) Cambia el mensaje dentro de las comillas y vuelve a ejecutar.

Ahora algo **reactivo**: escribe tu nombre y la celda de abajo cambia sola, sin que la ejecutes.

Tu nombre: $(@bind nombre campo_texto("mundo"))
"""

# ╔═╡ e7b3004e-ab0a-5846-818d-545377088773
md"### ¡Hola, **$(nombre)**! 👋"

# ╔═╡ 3f7bb57f-49c6-5695-a4ca-1a042de90124
md"""
### Ahora, a dibujar

$(paso(:predice)) La siguiente instrucción tiene cuatro datos: `circulo(250, 150, 80, "tomato")`. Antes de ejecutarla, piensa: ¿qué significará cada número? ¿Y la palabra entre comillas?
"""

# ╔═╡ b26cffa1-32bb-5d21-bcf4-8eca253768cb
circulo(250, 150, 80, "tomato")

# ╔═╡ 79689df4-1fe2-50c4-b9a5-8dd13a006d44
md"""
$(paso(:investiga)) El lienzo mide **500 de ancho y 300 de alto**. En la celda siguiente encendimos una cuadrícula para ver las coordenadas. Fíjate en dos detalles:

- El punto `(0, 0)` está **arriba a la izquierda**.
- `x` crece hacia la derecha y **`y` crece hacia abajo**, como cuando lees una página.

Para dibujar varias formas juntas las metemos en un `lienzo(...)`, separadas por comas.
"""

# ╔═╡ 49bfb525-c001-5559-adc5-2845d801a8b5
lienzo(
    circulo(250, 150, 80, "tomato"),
    rectangulo(40, 200, 120, 60, "steelblue"),
    texto(400, 60, "¡Hola!", "#9558B2", 32);
    cuadricula = true,
)

# ╔═╡ 1ed120e2-cf18-5391-b4f5-c370ca34e819
plegable("🧰 Tu caja de herramientas de dibujo (ábrela cuando la necesites)", md"""
| Instrucción | Qué dibuja |
|:------------|:-----------|
| `circulo(x, y, radio, color)` | Un círculo con centro en `(x, y)` |
| `rectangulo(x, y, ancho, alto, color)` | Un rectángulo; `(x, y)` es su esquina superior izquierda |
| `linea(x1, y1, x2, y2, color, grosor)` | Una línea entre dos puntos |
| `texto(x, y, "palabras", color, tamaño)` | Texto centrado en `(x, y)` |
| `poligono([(x1, y1), (x2, y2), (x3, y3)], color)` | Una figura uniendo puntos (un triángulo, una estrella...) |
| `lienzo(formas...; ancho, alto, fondo, cuadricula)` | Junta todo en un lienzo |

**Colores:** puedes usar nombres en inglés (`"gold"`, `"tomato"`, `"teal"`, `"orchid"`), códigos como `"#E1562C"` o, más adelante, `RGB(1, 0.5, 0)`.

**¿Olvidaste el orden de los datos?** Pon el cursor sobre `circulo` (o cualquier otra) y abre **Live Docs**, abajo a la derecha: verás su ayuda con un ejemplo.

**Extras opcionales** (se escriben después de un punto y coma): `circulo(250, 150, 80, "gold"; borde = "black", opacidad = 0.5)` · `rectangulo(...; redondeo = 12)`.
""")

# ╔═╡ 7888b9a1-4c30-5059-826c-ed96e1986939
md"""
$(paso(:modifica)) En la celda del lienzo:
1. Mueve el rectángulo a la esquina **inferior derecha**.
2. Cambia `"¡Hola!"` por la variable `nombre` (sin comillas) y escribe otra cosa en el campo de tu nombre. ¿Qué pasa?
3. Agrega una `linea` que cruce todo el lienzo.

$(paso(:comprueba)) En `circulo(250, 150, 80, "tomato")`, ¿qué número cambias para mover el círculo **a la derecha**?

$(@bind q_coord opciones(["250 (la x)", "150 (la y)", "80 (el radio)"]))
"""

# ╔═╡ 5399faa5-9085-5372-bd5f-93efcc540666
corregir(q_coord, "250 (la x)",
    "La `x` es la posición horizontal: si crece, el círculo va a la derecha. Cambiar la `y` lo mueve arriba o abajo, y el radio cambia su tamaño.",
    "Mira la cuadrícula: ¿qué eje va de izquierda a derecha? Prueba cambiar cada número y observa.")

# ╔═╡ edb26d1b-dfbb-5347-a5cf-c77573000ff7
md"""
!!! info "📌 En resumen"
    - Una instrucción tiene la forma `nombre(datos)`.
    - `println` muestra texto; `circulo`, `rectangulo`, `texto`... dibujan.
    - En la pantalla, `(0, 0)` está arriba a la izquierda y `y` crece hacia abajo.
"""

# ╔═╡ 45a79e68-0121-5171-8a89-e7f9d4ff08f0
md"""
$(kicker("02 · Números"))

# La computadora como calculadora

!!! tip "🎯 Al terminar sabrás"
    - Usar los operadores aritméticos de Julia.
    - Distinguir la división `/`, la división entera `÷` y el residuo `%`.
    - Mezclar texto y resultados en un mensaje.

$(paso(:idea)) Antes de dibujar cosas complicadas necesitamos hacer cuentas: ¿dónde va el siguiente círculo?, ¿cuántos cuadros caben? Los símbolos son los que ya conoces, con un par de detalles:

| Operador | Significado | Ejemplo |
|:--------:|:------------|:--------|
| `+` `-` `*` | suma, resta, multiplicación | `6 * 7` |
| `/` | división (siempre da decimal) | `20 / 5` |
| `^` | potencia | `2^8` |
| `÷` | división entera (escribe `\div` y pulsa Tab) | `7 ÷ 2` |
| `%` | residuo: lo que sobra | `7 % 2` |
"""

# ╔═╡ dc2dfc40-8506-5f3e-b7b5-d3d173401a1a
(; suma = 2 + 3, resta = 10 - 4, producto = 6 * 7, division = 20 / 5, potencia = 2^8)

# ╔═╡ 2fbcd109-151e-59e0-8cbe-e3f54443e884
md"""
### Repartir galletas

$(paso(:predice)) Vas a repartir 7 galletas entre 2 personas. ¿Qué crees que dará `7 / 2`? ¿Y `7 ÷ 2`? ¿Y `7 % 2`? Anótalo antes de mover nada.

$(paso(:ejecuta)) Ahora mueve los deslizadores y mira el dibujo.

**galletas** = $(@bind galletas deslizador(1:20, default = 7))

**personas** = $(@bind personas deslizador(1:6, default = 2))
"""

# ╔═╡ f4069fb6-ae90-5525-ab6e-07e777e7be93
(; division = galletas / personas, a_cada_quien = galletas ÷ personas, sobran = galletas % personas)

# ╔═╡ f2daaa84-b687-5eff-b409-9152172ffc62
dibujar_reparto(galletas, personas)

# ╔═╡ f4ee7510-ba36-52d5-bc25-b4235658c2ca
plegable("⚠️ Ojo: un error muy común", md"Creer que `20 / 5` da `4`. En Julia da `4.0`: el operador `/` **siempre** devuelve un decimal, aunque la división sea exacta. Si quieres un entero, usa `÷`.")

# ╔═╡ 7741973b-2a61-57cf-be9d-b89169f482ef
md"""
### Mensajes con resultados

$(paso(:investiga)) `println` acepta varios datos separados por comas. También puedes meter un cálculo **dentro** de un texto: escribe el signo de pesos seguido del cálculo entre paréntesis. Eso se llama **interpolación**. Mira la segunda línea:
"""

# ╔═╡ dfdf7a44-ef33-5075-8bf2-0116b1cd2d61
let
    total = 7
    println("Tengo ", total, " galletas")
    println("Si me como 2, me quedan $(total - 2)")
end

# ╔═╡ 55a7d081-929f-5cba-a153-0ffa91a90d61
md"""
$(paso(:comprueba)) ¿Qué resultado da `7 / 2` en Julia?

$(@bind q_div opciones(["3", "3.5", "3.0"]))
"""

# ╔═╡ e31d58f5-e76d-526f-b10d-18c5b81a3cf3
corregir(q_div, "3.5",
    "Exacto: `/` es la división normal y conserva los decimales.",
    "`3` sería la división entera (`÷`). Recuerda que `/` conserva los decimales.")

# ╔═╡ 4bc7e2d1-8d6f-5f0f-9ad3-49c78f3fea90
md"""
### ✍️ Ejercicio 1: llenar la tira

Una tira de **400 píxeles** debe llenarse exactamente con **8 cuadros iguales**. ¿Cuánto mide el lado de cada cuadro?

Reemplaza `missing` por una **operación** (no escribas el resultado de memoria: deja que Julia lo calcule). El dibujo de abajo te muestra cómo va quedando.
"""

# ╔═╡ caa1c85d-7830-5a8f-af34-992d5e190c86
lado_cuadro = missing

# ╔═╡ e6f72abf-fbf7-5f84-a4e4-ad93347a7ee6
let
    guia = rectangulo(50, 110, 400, 50, "none"; borde = "#999999")
    cuadros = Forma[]
    if lado_cuadro isa Real && 0 < lado_cuadro <= 400
        cuadros = [rectangulo(50 + (k - 1) * lado_cuadro, 110, lado_cuadro, lado_cuadro,
                              isodd(k) ? "#E1562C" : "#F2A541"; opacidad = 0.9) for k in 1:8]
    end
    lienzo(texto(250, 80, "400 píxeles", "#666666", 16), cuadros, guia; alto = 240)
end

# ╔═╡ 6c4b9d77-76f4-599f-9a65-70d15e462c28
if ismissing(lado_cuadro)
    pendiente()
elseif lado_cuadro isa Real && lado_cuadro == 50
    correcto("Los 8 cuadros llenan la tira sin que sobre nada.")
else
    incorrecto("Con lado `$(lado_cuadro)` los 8 cuadros no llenan exactamente la tira. ¿Qué operación reparte 400 en 8 partes iguales?")
end

# ╔═╡ cfa51137-f039-578b-8d98-4ae8a1fa20b4
md"""
$(plegable("Pista", md"Repartir en partes iguales es dividir. Puedes usar `/` o `÷`."))
$(plegable("Solución", md"`lado_cuadro = 400 ÷ 8` (también vale `400 / 8`, que da `50.0`)."))
"""

# ╔═╡ c01a61aa-409d-5b70-9302-6e3b6163384d
md"""
!!! info "📌 En resumen"
    - `+ - * ^` funcionan como esperas; `/` siempre da decimal.
    - `÷` da la parte entera y `%` lo que sobra. ¡`%` volverá en el semáforo y en el tablero de ajedrez!
    - La interpolación mete un cálculo dentro de un texto.
"""

# ╔═╡ 65f9e02b-b218-5b34-a394-4f312cf198e9
md"""
$(kicker("03 · Variables"))

# Ponerle nombre a las cosas

!!! tip "🎯 Al terminar sabrás"
    - Crear variables con `=`.
    - Explicar qué es realmente una variable.
    - Ver cómo Pluto actualiza todo lo que depende de una variable.

$(paso(:idea)) Una variable **no es una caja** que guarda cosas: es una **etiqueta** pegada a un valor. Así la describe el [manual oficial](https://docs.julialang.org/en/v1/manual/variables/): un nombre asociado a un valor. Ponerle nombre a un número hace que el código se entienda: `radio` dice mucho más que `60`.

$(paso(:ejecuta)) Mueve el deslizador: la variable `radio` cambia y el círculo se redibuja solo.

**radio** = $(@bind radio deslizador(10:140, default = 60))
"""

# ╔═╡ 625a857a-a907-51c5-b098-681e8d237985
color_favorito = "gold"

# ╔═╡ c90bf095-6cf4-5bee-b6e8-889a83c4067e
circulo(250, 150, radio, color_favorito)

# ╔═╡ 44f909e2-a871-531a-8c79-e8f50cd7ded8
md"""
$(paso(:modifica)) Cambia `"gold"` por `"teal"` en la celda de `color_favorito` y ejecútala. **No toques** la celda del círculo: observa que se actualiza sola, porque *depende* de esa variable.

!!! info "Reglas para los nombres"
    Distinguen mayúsculas de minúsculas (`radio` y `Radio` son distintos), aceptan acentos y letras griegas (`δ`, `α`) y no pueden ser palabras reservadas como `if` o `end`. La costumbre es usar minúsculas con guion bajo: `velocidad_luz`. Para números grandes puedes escribir `1_000_000`.

$(paso(:comprueba)) Observa este código (no hace falta ejecutarlo):

```julia
x = 5
y = x
x = 10
```

¿Cuánto vale `y` al final?

$(@bind q_var opciones(["5", "10", "15"]))
"""

# ╔═╡ 4b9f912d-6853-573d-b720-2662bc032fd9
corregir(q_var, "5",
    "`y = x` pegó la etiqueta `y` al valor `5`. Después, `x = 10` movió solo la etiqueta `x`; `y` siguió pegada al `5`.",
    "Imagina etiquetas: `y` quedó pegada al valor que tenía `x` en ese momento. ¿Se mueve `y` cuando mueves la etiqueta `x`?")

# ╔═╡ 92a63695-540e-5469-84f0-9fb33049a12b
md"""
### Para curiosos: dos etiquetas en la misma lista

Con números no se nota, pero con una **lista** (un *arreglo*) sí. $(paso(:predice)) Si cambias `original[1]`, ¿cambia también `alias[1]`?
"""

# ╔═╡ 11316845-1e12-501e-847d-2c9ba830aca0
let
    original = [1, 2, 3]
    alias = original        # dos nombres, ¡una sola lista!
    original[1] = 42
    (; original, alias)
end

# ╔═╡ 8e86bf9f-787c-5abf-8eba-ede9982790ff
plegable("⚠️ Ojo: copiar no es lo mismo que apuntar", md"`alias = original` **no copia** la lista: las dos etiquetas apuntan al mismo objeto. Si necesitas una copia independiente, usa `copy(original)`.")

# ╔═╡ 030e095c-9590-51ce-be57-482566b3f03d
md"""
!!! info "📌 En resumen"
    - Una variable es una etiqueta pegada a un valor; `=` la pega.
    - Los buenos nombres hacen que el código se lea como una explicación.
    - En Pluto, al cambiar una variable se recalculan las celdas que la usan.
"""

# ╔═╡ 46e289f5-819e-55b2-9b73-7f0ed20ed07b
md"""
$(kicker("04 · Tipos de datos"))

# ¿Qué clase de dato es?

!!! tip "🎯 Al terminar sabrás"
    - Usar `typeof` para averiguar el tipo de un valor.
    - Distinguir `Int64`, `Float64`, `String` y `Bool`.
    - Crear colores con `RGB` y entender que también son datos.

$(paso(:idea)) En una hoja de cálculo no es lo mismo una celda de texto que una de número. Julia también distingue **tipos**, y gracias a eso sabe qué operaciones tienen sentido: puedes multiplicar números, pero no palabras.

$(paso(:predice)) Antes de ejecutar, adivina el tipo de cada valor de la lista.

$(plegable("Ver pistas", md"`2` es un entero · `69.2` tiene punto decimal · lo que va entre comillas dobles es texto · `true` es un valor lógico (sí/no) · `'j'` (comillas simples) es un solo carácter · `1 // 2` es una fracción exacta · `RGB(1, 0.5, 0)` es un color."))
"""

# ╔═╡ 0c37aa50-8dcd-5fcd-8c3f-567ed35a3438
[valor => typeof(valor) for valor in (2, 69.2, "Hola", true, 'j', 1 // 2, RGB(1, 0.5, 0))]

# ╔═╡ 5aea9618-96fd-5cdb-aac7-1db9cd527f88
plegable("⚠️ Ojo: un error muy común", md"`2` y `2.0` **no son del mismo tipo** (`Int64` y `Float64`). Y un número escrito entre comillas, como `\"2\"`, es **texto**: por eso sumarle un número produce un error (lo verás en la sección 05).")

# ╔═╡ 69945c8c-b7fc-5f43-8fd8-c2638fc3984c
md"""
### Los colores también son datos

$(paso(:idea)) Las pantallas mezclan **luz** roja, verde y azul. Un color `RGB(r, g, b)` dice cuánta luz de cada una hay, de `0` (apagada) a `1` (al máximo). `RGB` es un tipo, igual que `Int64`: lo creamos para este cuaderno con unas pocas líneas de Julia.

$(paso(:ejecuta)) Mezcla tu color:

**rojo** = $(@bind canal_r deslizador(0:0.05:1, default = 0.9))

**verde** = $(@bind canal_g deslizador(0:0.05:1, default = 0.35))

**azul** = $(@bind canal_b deslizador(0:0.05:1, default = 0.2))
"""

# ╔═╡ 2e29f882-ae97-5f99-93ec-0abdafe88404
RGB(canal_r, canal_g, canal_b)

# ╔═╡ 1bc29bd8-9103-56e4-9703-2544e6bcdc30
let
    mi_color = RGB(canal_r, canal_g, canal_b)
    lienzo(circulo(250, 140, 110, mi_color), texto(250, 278, "código del color: " * hexcolor(mi_color), "#444444", 18))
end

# ╔═╡ 3a3ff5e7-ee61-5da9-aef8-d4f19287d969
md"""
$(paso(:predice)) ¿Qué color será `RGB(1, 1, 0)`? ¿Y `RGB(0.5, 0.5, 0.5)`? ¿Y la mitad entre rojo y azul? Piensa y luego ejecuta.
"""

# ╔═╡ 3a89edb5-9e9a-5064-8a7c-1b022463d86f
[RGB(1, 1, 0), RGB(0.5, 0.5, 0.5), mezclar(RGB(1, 0, 0), RGB(0, 0, 1), 0.5)]

# ╔═╡ 6b72c7ce-92cb-5e3e-84b3-a7551afba97c
plegable("Ver explicación", md"Luz roja + luz verde = **amarillo** (con pintura sería distinto, ¡pero esto es luz!). Los tres canales a la mitad dan **gris**. Y `mezclar(a, b, 0.5)` queda a medio camino entre rojo y azul: **morado**.")

# ╔═╡ b6f5cd78-7e05-5291-be52-aeb69a27b1ec
md"""
$(paso(:comprueba)) ¿Qué devuelve `typeof(3 / 1)`?

$(@bind q_tipo opciones(["Int64", "Float64", "String"]))
"""

# ╔═╡ c3366bb2-389b-525a-80a1-189e53417456
corregir(q_tipo, "Float64",
    "Aunque `3 / 1` valga exactamente 3, el operador `/` siempre devuelve un decimal (`Float64`).",
    "Recuerda la sección de números: ¿qué tipo de resultado devuelve siempre `/`?")

# ╔═╡ b5933304-abb7-5dea-b3a6-0af926bf1359
md"""
### Para curiosos: los tipos forman un árbol genealógico

Todo tipo tiene un "padre": `Int64` es un `Signed` (entero con signo), que es un `Integer`, que es un `Real`, que es un `Number`... y todos descienden de `Any`. Esta jerarquía es la base del *multiple dispatch* que verás al final.
"""

# ╔═╡ f50bf0f2-2c18-5242-b522-ef23c315627b
let
    familia = Any[Int64]
    while familia[end] !== Any
        push!(familia, supertype(familia[end]))
    end
    familia
end

# ╔═╡ c698936a-13f9-53af-95d0-a926802c35f1
md"""
!!! info "📌 En resumen"
    - `typeof(x)` te dice el tipo de `x`.
    - `Int64` (enteros), `Float64` (decimales), `String` (texto) y `Bool` (`true`/`false`) son los más comunes.
    - Un color `RGB(r, g, b)` también es un dato, con tres números entre 0 y 1.
"""

# ╔═╡ 09fa005e-030d-5ed4-a01a-a4c599589192
md"""
$(kicker("05 · Errores"))

# Leer errores sin miedo

!!! tip "🎯 Al terminar sabrás"
    - Reconocer las partes de un mensaje de error.
    - Arreglar los errores más comunes en Pluto.

$(paso(:idea)) Un error no es un fracaso: es la computadora diciéndote *"no entendí esta instrucción, y fue por esto"*. Todo mensaje tiene la misma estructura:

| Parte | Qué te dice |
|:------|:------------|
| **Nombre** (`MethodError`, `DomainError`, `BoundsError`...) | La categoría del problema |
| **Descripción** | Qué intentaste hacer y por qué no se pudo |
| **Pista** (a veces) | Sugerencias, como *Closest candidates are...* |

$(paso(:investiga)) Aquí provocamos tres errores a propósito, pero "atrapados" para que el cuaderno no se detenga. Lee cada uno y busca su nombre.
"""

# ╔═╡ 547d9d82-1ffd-5782-b7bd-b282e621d2c1
begin
    function capturar(f)
        try
            f()
            "sin error"
        catch e
            sprint(showerror, e)
        end
    end

    ejemplos_de_error = [
        "\"hola\" + 1"  => capturar(() -> "hola" + 1),
        "sqrt(-1)"      => capturar(() -> sqrt(-1)),
        "[1, 2, 3][5]"  => capturar(() -> [1, 2, 3][5]),
    ]

    Text(join(["▸ $codigo\n$mensaje" for (codigo, mensaje) in ejemplos_de_error], "\n\n"))
end

# ╔═╡ 7e19cda5-2737-547e-aa5b-ffefc2bae233
md"""
### Los cuatro errores que más vas a ver

| Mensaje | Qué pasó | Cómo arreglarlo |
|:--------|:---------|:----------------|
| `UndefVarError: radoi not defined` | Usaste un nombre que no existe | Revisa la ortografía y las mayúsculas |
| `Multiple definitions for x` | Dos celdas definen la misma variable. En Pluto **cada nombre vive en una sola celda** | Cambia uno de los nombres, o encierra tu código en `let ... end` |
| `MethodError: no method matching` | La función no sabe trabajar con esos tipos | Lee los tipos que aparecen, como `::String` |
| `syntax: incomplete` | Falta cerrar un `end`, un `)` o unas comillas | Cuenta lo que abriste y lo que cerraste |

!!! tip "Truco de Pluto: let"
    Si quieres hacer pruebas sin "gastar" nombres, escribe tu código dentro de `let ... end`. Las variables que crees ahí adentro solo existen en esa celda. Por eso muchas celdas de este cuaderno empiezan con `let`.

$(paso(:comprueba)) Ves `MethodError: no method matching +(::String, ::Int64)`. ¿Qué significa?

$(@bind q_error opciones([
    "Julia no sabe sumar un texto con un entero",
    "Falta instalar un paquete",
    "La computadora se quedó sin memoria",
]))
"""

# ╔═╡ d1134f1b-05e9-501b-8677-8af934fbd6eb
corregir(q_error, "Julia no sabe sumar un texto con un entero",
    "Lee los tipos entre paréntesis: `::String` y `::Int64`. Para esa combinación no existe una suma.",
    "Fíjate en lo que aparece después de `+(`: son los **tipos** de los datos que no se pudieron combinar.")

# ╔═╡ 422756c9-a724-5cab-b358-a6ed8c3958bd
md"""
!!! info "📌 En resumen"
    - Lee primero la **primera línea** del error: nombre y descripción.
    - Los tipos como `::String` o `::Int64` suelen darte la clave.
    - En Pluto, un nombre por celda; para pruebas, usa `let ... end`.
"""

# ╔═╡ efc3bd2c-50ca-5ff9-86bb-4d2b21c4b4af
md"""
$(kicker("06 · Funciones y decisiones"))

# Un semáforo que piensa

!!! tip "🎯 Al terminar sabrás"
    - Crear tus propias instrucciones con `function`.
    - Hacer preguntas de sí o no con `==`, `<`, `>`...
    - Tomar decisiones con `if`, `elseif` y `else`.
    - Usar `%` para repetir un ciclo, como un semáforo real.

### Antes: tus propias instrucciones

$(paso(:idea)) Hasta ahora usaste instrucciones que alguien más escribió (`circulo`, `lienzo`...). Una **función** es una instrucción nueva hecha por ti: una receta con nombre. Los datos que recibe se llaman **parámetros** y funcionan como variables que se llenan cada vez que la usas.

$(paso(:investiga)) Esta función dibuja una carita. Tiene tres parámetros: `x`, `y` y `color`. Fíjate en dos trucos: todo se calcula **a partir de** `x` y `y` (por eso la carita se puede poner en cualquier lugar), y las formas se dibujan **en orden**, así que las de abajo en la lista tapan a las de arriba.
"""

# ╔═╡ 0ddbead7-ac3d-5828-93bc-86ea0ea50746
function carita(x, y, color)
    [circulo(x, y, 55, color),                    # la cara
     circulo(x, y + 14, 20, "#222222"),           # boca: un círculo negro...
     rectangulo(x - 22, y - 6, 44, 20, color),    # ...tapado arriba con el color de la cara = ¡sonrisa!
     circulo(x - 20, y - 16, 7, "#222222"),       # ojo izquierdo
     circulo(x + 20, y - 16, 7, "#222222")]       # ojo derecho
end

# ╔═╡ bc65cc80-33f6-534d-93d8-c4d77d103464
md"""
$(paso(:ejecuta)) Una receta, tres usos: la misma función con datos distintos.
"""

# ╔═╡ 5bb4c8dc-4762-5087-b041-209032445382
lienzo(carita(100, 150, "gold"), carita(250, 150, "tomato"), carita(400, 150, "#7FC8F8"))

# ╔═╡ 584340f3-a55e-5a0c-8109-70f8692f8a23
md"""
$(paso(:modifica)) Agrega una cuarta carita en la esquina superior izquierda. Luego cambia la función para que los ojos sean más grandes: ¡las tres caritas cambian a la vez! Esa es la gran ventaja de una función: corriges en un solo lugar.

$(paso(:crea)) Escribe una función `carita_sorprendida(x, y, color)` con la boca en forma de "o" (pista: un `circulo` negro pequeño y sin tapa).

### Preguntas de sí o no

$(paso(:idea)) Un semáforo responde todo el tiempo a una pregunta: *¿qué luz enciendo ahora?* Las computadoras deciden con preguntas cuya respuesta es **sí** (`true`) o **no** (`false`), un tipo llamado `Bool`.

| Pregunta | En Julia |
|:---------|:---------|
| ¿son iguales? | `a == b` |
| ¿son distintos? | `a != b` |
| ¿es menor? ¿es mayor? | `a < b`, `a > b` |
| ¿menor o igual? ¿mayor o igual? | `a <= b`, `a >= b` |

$(paso(:predice)) ¿Qué responderá cada pregunta de la celda siguiente? Ojo con la última: ¿importan las mayúsculas?
"""

# ╔═╡ 69e4ad31-be84-5b03-82a4-1aa11662743b
(; cinco_mayor_que_tres = 5 > 3, dos_igual_a_dos_punto_cero = 2 == 2.0, hola_distinto_de_Hola = "hola" != "Hola")

# ╔═╡ 22364ee2-5171-56aa-8d88-55e76e33b75c
plegable("⚠️ Ojo: = no es lo mismo que ==", md"Un solo `=` **asigna** (pega una etiqueta). Dos `==` **preguntan** si dos cosas son iguales. Confundirlos es uno de los errores más comunes al empezar.")

# ╔═╡ 0803b2e1-6720-57c4-84f0-ad5fcb1fddb8
md"""
### Paso 1: dibujar el semáforo

$(paso(:investiga)) Como `carita`, esta función recibe un dato (la `luz`) y arma un dibujo con piezas que ya conoces: un `lienzo`, un `rectangulo` y tres `circulo`. Lo nuevo es esta expresión:

```julia
luz == "rojo" ? "#FF3B30" : apagado
```

Se lee: *¿la luz es roja? **sí** → usa rojo brillante; **no** → usa gris apagado*. Es un **if de una sola línea**: `pregunta ? valor_si_sí : valor_si_no`.
"""

# ╔═╡ 9c853fd7-0bb6-5131-abf8-76f129b5f248
function semaforo(luz)
    apagado  = "#2F2F2F"
    rojo     = luz == "rojo"     ? "#FF3B30" : apagado
    amarillo = luz == "amarillo" ? "#FFCC00" : apagado
    verde    = luz == "verde"    ? "#34C759" : apagado

    lienzo(
        rectangulo(195, 10, 110, 280, "#1D1D1F"; redondeo = 24),
        circulo(250, 62, 36, rojo),
        circulo(250, 150, 36, amarillo),
        circulo(250, 238, 36, verde),
        texto(400, 150, luz, "#444444", 24),
    )
end

# ╔═╡ 526cd332-e7eb-59f8-876f-0b5c4425258d
md"""
$(paso(:ejecuta)) Elige una luz: $(@bind luz_elegida selector(["rojo", "amarillo", "verde"]))
"""

# ╔═╡ 6c7ef08f-e200-5128-972c-3e935c89b0d9
semaforo(luz_elegida)

# ╔═╡ 6e19a889-31b8-5f3b-9405-2154a5d58a91
md"""
### Paso 2: decidir según el tiempo

$(paso(:idea)) Un semáforo real repite un **ciclo**. Imagina uno de 10 segundos:

| Segundos del ciclo | Luz |
|:------------------:|:----|
| 0 a 4 | verde |
| 5 y 6 | amarillo |
| 7 a 9 | rojo |

¿Cómo sabemos en qué parte del ciclo vamos si el reloj ya marca 17 segundos? ¡Con el residuo! `17 % 10` da `7`: llevamos un ciclo completo y vamos en el segundo 7 del siguiente. Es el mismo `%` de las galletas que sobraban.

$(paso(:investiga)) La decisión se escribe con `if`, `elseif` (*si no, pero si...*) y `else` (*en cualquier otro caso*). Julia revisa las preguntas **de arriba hacia abajo** y se queda con la primera que sea verdadera.
"""

# ╔═╡ 53f2d0c6-988c-5299-968f-1065b4a3674b
function color_del_semaforo(segundos)
    fase = segundos % 10          # ¿en qué segundo del ciclo vamos? (0 a 9)
    if fase < 5
        "verde"
    elseif fase < 7
        "amarillo"
    else
        "rojo"
    end
end

# ╔═╡ a22116c1-18c7-5a54-bbb1-a39fc25c626f
md"""
$(paso(:predice)) Según `color_del_semaforo`, ¿qué luz se ve en el segundo **17**?

$(@bind q_semaforo opciones(["verde", "amarillo", "rojo"]))
"""

# ╔═╡ 723b90e3-955c-5661-b68d-43831f06efdc
corregir(q_semaforo, "rojo",
    "`17 % 10` da `7`. Como `7 < 5` es falso y `7 < 7` también, Julia llega al `else`: **rojo**.",
    "Primero calcula `17 % 10`. Luego recorre las preguntas de arriba abajo: ¿cuál es la primera verdadera?")

# ╔═╡ 7986bc00-a3f8-535c-a7a3-c36d83e87c81
md"""
### Paso 3: ¡que cambie solo!

$(paso(:ejecuta)) Pulsa **Iniciar**. El reloj suma un segundo cada segundo, y Pluto vuelve a preguntar qué luz toca.

Reloj: $(@bind segundo reloj(maximo = 59))
"""

# ╔═╡ f6614a64-f504-5a8a-993f-da50512fad3f
md"Segundo **$(segundo)** · posición en el ciclo: $(segundo) % 10 = **$(segundo % 10)** · luz: **$(color_del_semaforo(segundo))**"

# ╔═╡ 7e45991a-ebbf-5ac7-849d-dc4c4dee4e7a
semaforo(color_del_semaforo(segundo))

# ╔═╡ 2a53822d-ac3b-561a-829f-6d2312f14248
md"""
$(paso(:modifica)) Cambia la función `color_del_semaforo` (no hace falta tocar nada más):
1. Haz que el amarillo dure **3** segundos en lugar de 2.
2. Haz un ciclo de **12** segundos con el rojo más largo.
3. 🌶️ En algunos países, antes del verde se encienden rojo y amarillo juntos. ¿Cómo lo dibujarías? (Pista: `semaforo` también necesitaría cambiar.)

$(paso(:crea)) Escribe en una celda nueva una función `semaforo_peatonal(segundos)` que devuelva `"🚶 cruza"` o `"✋ espera"` y muéstrala con `texto(250, 150, semaforo_peatonal(segundo), "black", 60)`. ¿Cuándo debe decir *cruza* el peatón: cuando los coches tienen verde o rojo?
"""

# ╔═╡ 1f0404cb-833e-5d1f-afae-77b292e319ef
md"""
### ✍️ Ejercicio 2: el termómetro

Escribe una función `clasificar_temperatura(t)` que devuelva:
- `"frío"` si `t` es **menor que 15**,
- `"templado"` si está **entre 15 y 25** (incluidos),
- `"calor"` si es **mayor que 25**.

El dibujo prueba tu función con temperaturas de −5° a 40°: cada círculo toma el color de lo que respondió tu función.
"""

# ╔═╡ f1ab4626-766c-5805-bcc7-c088435c9ec3
clasificar_temperatura(t) = missing

# ╔═╡ f20489ce-9b81-5de6-9283-7c57509db4d6
termometro(clasificar_temperatura)

# ╔═╡ f043307d-6ee8-5128-97e2-98a5f5afeafa
let
    esperado(t) = t < 15 ? "frio" : t <= 25 ? "templado" : "calor"
    pruebas = [-5, 0, 14, 15, 20, 25, 26, 40]
    try
        if ismissing(clasificar_temperatura(20))
            pendiente()
        else
            malos = [t for t in pruebas if normalizar(clasificar_temperatura(t)) != esperado(t)]
            if isempty(malos)
                correcto("Tu termómetro acierta en todas las pruebas, incluidos los bordes 15 y 25.")
            else
                incorrecto("Revisa estas temperaturas: $(join(malos, ", ")). Cuidado con los bordes: 15 y 25 son *templado*.")
            end
        end
    catch e
        incorrecto("Tu función produjo un error. Revisa que cada `if` tenga su `end`. Mensaje: " * sprint(showerror, e))
    end
end

# ╔═╡ f1751698-85d0-59f7-ad4f-4a3d6b06f336
juntar(
    plegable("Pista", md"Copia la estructura de `color_del_semaforo`: un `if`, un `elseif` y un `else`. La primera pregunta podría ser `t < 15`."),
    plegable("Solución", md"""
```julia
function clasificar_temperatura(t)
    if t < 15
        "frío"
    elseif t <= 25
        "templado"
    else
        "calor"
    end
end
```
Reemplaza la línea de `missing` por esta función completa.
"""),
)

# ╔═╡ 0881513e-8328-5c34-b083-5062c02a6333
md"""
!!! info "📌 En resumen"
    - `==`, `!=`, `<`, `>`, `<=`, `>=` hacen preguntas cuya respuesta es `true` o `false`.
    - `if / elseif / else` elige un camino: gana la **primera** pregunta verdadera.
    - `pregunta ? sí : no` es un if de una línea.
    - `%` convierte un tiempo que crece sin parar en un ciclo que se repite.
"""

# ╔═╡ b84acc70-cb52-5a3d-8496-7cbbf84d1fca
md"""
$(kicker("07 · Repetir"))

# Repetir sin cansarse

!!! tip "🎯 Al terminar sabrás"
    - Repetir instrucciones con un bucle `for`.
    - Construir listas de formas con una **comprensión**.
    - Usar el contador del bucle para cambiar posición, tamaño y color.

$(paso(:idea)) Dibujar 5 círculos escribiendo 5 líneas funciona. ¿Y 500? Las computadoras son buenísimas repitiendo. Un bucle `for` dice: *para cada número `i` del 1 al 5, haz esto*.

$(paso(:predice)) ¿Cuántos círculos verás? ¿Dónde estará el último?
"""

# ╔═╡ be7b3eac-23c0-53d2-a769-f9df84f721bf
let
    formas = Forma[]                  # una lista vacía de formas
    for i in 1:5                      # i vale 1, luego 2, 3, 4 y 5
        push!(formas, circulo(80 * i, 150, 30, "tomato"))   # push! agrega a la lista
    end
    formas
end

# ╔═╡ 38441829-6af1-5d31-b89e-1c58bc895c69
md"""
$(paso(:investiga)) En cada vuelta, `i` cambia y por eso `80 * i` da 80, 160, 240, 320 y 400: los círculos se van a la derecha. `push!` agrega cada círculo a la lista.

Como construir listas es tan común, Julia tiene una **forma corta** llamada *comprensión*. Se lee casi como español: *un círculo en `80 * i`, para cada `i` del 1 al 5*.
"""

# ╔═╡ 41ab873a-e6ef-5da5-9926-a41e7df3652a
[circulo(80 * i, 150, 30, "tomato") for i in 1:5]

# ╔═╡ 6a4cd1eb-f945-5944-9e29-e74f0b5249b5
md"""
### El contador puede cambiarlo todo

$(paso(:ejecuta)) Ahora `i` decide la posición, el tamaño **y** el color. Mueve el deslizador.

**cantidad** = $(@bind cantidad deslizador(1:12, default = 7))
"""

# ╔═╡ fd242021-d8a6-5f3a-a052-8d844ab1bfc0
[circulo(38 * i, 150, 6 + 2 * i, RGB(i / cantidad, 0.35, 1 - i / cantidad)) for i in 1:cantidad]

# ╔═╡ 34d1c4f5-c555-53ca-8540-ea326b24aefc
md"""
$(paso(:modifica)) Haz que los círculos bajen como una escalera (pista: la `y` también puede depender de `i`). Luego haz que se hagan **más chicos** en lugar de más grandes.

$(paso(:comprueba)) ¿Cuántos círculos dibuja `[circulo(40 * i, 150, 10) for i in 2:2:10]`? (`2:2:10` significa *de 2 a 10, de 2 en 2*.)

$(@bind q_bucle opciones(["10", "5", "2"]))
"""

# ╔═╡ 8beb0928-5f5c-5bd8-a002-d87d11a8be8b
corregir(q_bucle, "5",
    "`2:2:10` es la lista 2, 4, 6, 8, 10: cinco números, cinco círculos. Puedes comprobarlo con `collect(2:2:10)`.",
    "Escribe en una celda `collect(2:2:10)` para ver qué números recorre el bucle.")

# ╔═╡ ba3076d6-0170-5b2c-90cb-9343b6292b07
md"""
### Dos bucles a la vez: un tablero de ajedrez

$(paso(:idea)) Una comprensión puede recorrer **filas y columnas** al mismo tiempo. Y para alternar colores usamos otra vez el residuo: si `fila + col` es par (`% 2 == 0`), la casilla es oscura; si es impar, es clara.

**casillas por lado** = $(@bind n_casillas deslizador(2:12, default = 8))
"""

# ╔═╡ a8bed635-6deb-5b4e-8f17-583c25e49b35
let
    lado = 280 / n_casillas
    [rectangulo(110 + lado * col, 10 + lado * fila, lado, lado,
                (fila + col) % 2 == 0 ? "#2B2B2B" : "#F3E9D2")
     for fila in 0:n_casillas-1, col in 0:n_casillas-1]
end

# ╔═╡ c80a6027-9946-50a8-b938-9116b3bba1cf
md"""
### Un girasol hecho de matemáticas

$(paso(:idea)) ¿Has visto cómo se acomodan las semillas de un girasol? Cada semilla nueva sale **girada el mismo ángulo** respecto a la anterior, un poquito más lejos del centro. Este modelo lo propuso el matemático Helmut Vogel en 1979 y basta con un bucle para dibujarlo.

$(paso(:predice)) Las plantas usan un ángulo de unos **137.5°**. ¿Qué crees que pasa si usas 120° o 135°?

**ángulo** = $(@bind angulo_girasol deslizador(100:0.5:180, default = 137.5))

**semillas** = $(@bind n_semillas deslizador(50:50:800, default = 400))
"""

# ╔═╡ 356e9876-b3cb-5eca-a609-9f3f93931bd4
let
    giro = deg2rad(angulo_girasol)            # convierte grados a radianes
    [circulo(250 + 5 * sqrt(k) * cos(k * giro),
             150 + 5 * sqrt(k) * sin(k * giro),
             2.6,
             mezclar(RGB(0.55, 0.3, 0.05), RGB(1, 0.8, 0.1), k / n_semillas))
     for k in 1:n_semillas]
end

# ╔═╡ 153aa4c8-3a69-5d4d-ad5d-a0e6eaa5f0b9
plegable("¿Por qué 137.5°?", md"""
Es el **ángulo áureo**: unos 137.5°, ligado al número de oro. Con él, las semillas **nunca** se alinean en rayos rectos, así que llenan el espacio sin dejar huecos. Con 120° (un tercio de vuelta) las semillas forman solo 3 rayos; con 135° forman 8. Prueba 137.4 y 137.6: ¡un cambio de una décima ya se nota!
""")

# ╔═╡ 39a90505-2df7-54a4-93ee-c2e07f4b6c19
md"""
!!! info "📌 En resumen"
    - `for i in 1:n ... end` repite; `i` cuenta las vueltas.
    - `[algo(i) for i in 1:n]` construye una lista en una línea (comprensión).
    - `[algo(fila, col) for fila in ..., col in ...]` recorre una cuadrícula.
    - El contador sirve para cambiar posición, tamaño o color en cada vuelta.
"""

# ╔═╡ 39a9025e-ffb4-57b8-9c9c-ea4588043a4a
md"""
$(kicker("08 · Imágenes"))

# Una imagen es una tabla de colores

!!! tip "🎯 Al terminar sabrás"
    - Explicar que una imagen es una **matriz** (filas y columnas) de colores.
    - Crear imágenes con una fórmula.
    - Aplicar un filtro a cada píxel con el punto `.`.

$(paso(:idea)) Tu celular guarda cada foto como una tabla gigante: filas y columnas de cuadritos de color llamados **píxeles**. Así empieza el curso *Computational Thinking* del MIT, y es una gran idea: si una imagen es una tabla de números, ¡podemos crear y transformar imágenes con código!

$(paso(:investiga)) Esta matriz tiene 8 filas y 9 columnas de ceros y unos. ¿Ves la figura escondida?
"""

# ╔═╡ 09e2e19b-cb21-5c16-bca2-9055357c4e41
mapa_corazon = [
    0 1 1 0 0 0 1 1 0
    1 1 1 1 0 1 1 1 1
    1 1 1 1 1 1 1 1 1
    1 1 1 1 1 1 1 1 1
    0 1 1 1 1 1 1 1 0
    0 0 1 1 1 1 1 0 0
    0 0 0 1 1 1 0 0 0
    0 0 0 0 1 0 0 0 0
]

# ╔═╡ 0cc3c8f7-59a7-53f1-a792-1db589417d14
md"""
$(paso(:ejecuta)) Convertimos cada número en un color con una comprensión: si vale 1, rojo; si no, blanco. Como recorremos una matriz, el resultado también es una matriz... y Pluto la muestra como **imagen**.
"""

# ╔═╡ f32da354-0321-5bd6-aed0-359ea222fe17
corazon = [v == 1 ? RGB(0.86, 0.15, 0.3) : RGB(1, 1, 1) for v in mapa_corazon]

# ╔═╡ c8a2cd5c-64d4-53e3-8547-ae0bf46ef8ed
size(corazon)

# ╔═╡ 281dfa3c-72e0-5338-b839-9402c20ab38c
md"""
$(paso(:modifica)) Cambia algunos 0 y 1 de `mapa_corazon` para dibujar otra cosa: tu inicial, una carita, un invasor espacial. ¿Y si usas un 2 para un tercer color? (Pista: un `?` dentro de otro.)

$(paso(:comprueba)) Una imagen de 60 filas y 90 columnas, ¿cuántos píxeles tiene?

$(@bind q_matriz opciones(["150", "5400", "60"]))
"""

# ╔═╡ 716b93d2-7dcb-5b21-ae81-8141f291f6c9
corregir(q_matriz, "5400",
    "Filas × columnas: 60 × 90 = 5400 píxeles. ¡Una foto de celular tiene millones!",
    "Piensa en una tabla: ¿cuántas casillas tiene una tabla de 60 filas y 90 columnas?")

# ╔═╡ 6ffbe233-a5af-5e9c-a407-f213771d5b3a
md"""
### Pintar con una fórmula

$(paso(:idea)) No hace falta escribir cada píxel a mano: podemos calcular su color a partir de su **fila** y su **columna**. Aquí el rojo crece hacia abajo y el azul hacia la derecha.
"""

# ╔═╡ b7737785-bbe3-5e2e-bfdf-9ff85a3594e2
degradado = [RGB(fila / 100, 0.3, col / 150) for fila in 1:100, col in 1:150]

# ╔═╡ 44058e37-6c46-57a7-ae64-13a92e15aa8d
md"""
### Filtros: una función aplicada a cada píxel

$(paso(:idea)) Un filtro de Instagram es una función que recibe un color y devuelve otro. Para aplicarla a **todos** los píxeles basta con un punto: `f.(imagen)`. Eso se llama *broadcasting* (difundir).
"""

# ╔═╡ 43f73642-dee0-5152-b9db-8fcc4a3827db
invertir(c) = RGB(1 - c.r, 1 - c.g, 1 - c.b)

# ╔═╡ 42d6694e-330e-501a-8362-c9488aa93dd4
invertir.(degradado)

# ╔═╡ 98c704e3-ff1a-527c-967a-ed91f334768a
function gris(c)
    brillo = (c.r + c.g + c.b) / 3      # el promedio de los tres canales
    RGB(brillo, brillo, brillo)          # mismo valor en los tres = un tono de gris
end

# ╔═╡ 24a9843d-d154-5134-bf35-b9fe811edfe3
gris.(degradado)

# ╔═╡ 70edf63c-c93f-5d1e-b962-a9b4a93427ee
md"""
$(paso(:crea)) Inventa tu propio filtro: por ejemplo `sepia(c)`, uno que quite todo el azul, o uno que intercambie el rojo y el verde. Aplícalo a `degradado` y a `corazon`.
"""

# ╔═╡ 2594872f-4d9b-5296-888e-c7ef112c5957
md"""
### ✍️ Ejercicio 3: la bandera de México

Crea `bandera_mx`: una imagen de **60 filas y 90 columnas** con tres franjas verticales iguales: verde, blanca y roja (sin el escudo). Pista de colores: verde `RGB(0, 0.41, 0.28)`, blanco `RGB(1, 1, 1)`, rojo `RGB(0.81, 0.07, 0.15)`.
"""

# ╔═╡ 486745b8-08b3-5b77-8460-57e5e93b47bb
bandera_mx = missing

# ╔═╡ c5d21499-abba-5638-a5c2-54dbe9e45c38
let
    verdoso(c) = c.g > c.r && c.g > c.b
    blanco(c) = min(c.r, c.g, c.b) > 0.8
    rojizo(c) = c.r > c.g && c.r > c.b
    if ismissing(bandera_mx)
        pendiente()
    elseif !(bandera_mx isa AbstractMatrix{RGB})
        incorrecto("`bandera_mx` debe ser una matriz de colores. Usa una comprensión con `for fila in 1:60, col in 1:90`.")
    elseif size(bandera_mx) != (60, 90)
        incorrecto("Tu imagen mide $(size(bandera_mx)) y debe medir (60, 90): 60 filas y 90 columnas.")
    elseif all(verdoso(bandera_mx[f, 15]) && blanco(bandera_mx[f, 45]) && rojizo(bandera_mx[f, 75]) for f in 1:60)
        correcto("¡Viva México! 🇲🇽 Cada franja mide 90 ÷ 3 = 30 columnas.")
    else
        incorrecto("Las franjas no están en su lugar. Cada una mide 90 ÷ 3 = 30 columnas: verde hasta la 30, blanco hasta la 60 y rojo después.")
    end
end

# ╔═╡ 0decb5a6-5945-59f4-ba07-38c8d0b0762f
md"""
$(plegable("Pista", md"Decide el color según la **columna** con un if de una línea anidado: `col <= 30 ? verde : col <= 60 ? blanco : rojo`, donde `verde`, `blanco` y `rojo` son los tres `RGB` del enunciado."))
$(plegable("Solución", md"`bandera_mx = [col <= 30 ? RGB(0, 0.41, 0.28) : col <= 60 ? RGB(1, 1, 1) : RGB(0.81, 0.07, 0.15) for fila in 1:60, col in 1:90]`"))
"""

# ╔═╡ c287f6ef-514e-5cdb-8dd0-8ad96fa31a92
md"""
!!! info "📌 En resumen"
    - Una imagen es una matriz de colores; cada elemento es un píxel.
    - `[color(fila, col) for fila in 1:alto, col in 1:ancho]` crea una imagen con una fórmula.
    - `f.(imagen)` aplica la función `f` a cada píxel: así funcionan los filtros.
"""

# ╔═╡ 4b10d934-b92c-5ddb-b7af-4caaef6e2459
md"""
$(kicker("09 · Recursión y fractales"))

# Funciones que se llaman a sí mismas

!!! tip "🎯 Al terminar sabrás"
    - Escribir funciones que se usan a sí mismas.
    - Explicar qué es la **recursión** y por qué necesita un **caso base**.
    - Dibujar fractales: figuras que contienen copias de sí mismas.

$(paso(:idea)) Piensa en unas **matrioskas**, las muñecas rusas: abres una y adentro hay otra igual pero más chica, y otra, y otra... hasta llegar a una tan pequeña que ya no se abre. Una función **recursiva** funciona igual. Tiene dos partes:

1. **Caso base:** cuándo detenerse (la muñeca más pequeña).
2. **Paso recursivo:** hacer un poco de trabajo y llamarse a sí misma con un problema **más chico**.

$(paso(:investiga)) Esta función dibuja un círculo y luego se pide a sí misma dibujar otro un poco más pequeño. ¿Dónde está el caso base?
"""

# ╔═╡ ec276f41-b11a-5fef-a708-c6791bcb8ff1
function circulos_anidados(x, y, radio)
    if radio < 4                        # caso base: demasiado chico, ya no dibujes
        return Forma[]
    end
    este = circulo(x, y, radio, "none"; borde = "#4063D8")
    resto = circulos_anidados(x + 0.2 * radio, y, 0.8 * radio)   # ¡se llama a sí misma!
    return [este; resto]                # junta este círculo con todos los demás
end

# ╔═╡ c7c31467-916d-527f-b796-040688550a1b
lienzo(circulos_anidados(220, 150, 140))

# ╔═╡ b2dace1a-1ff6-5be8-ad6a-1637ed911f5f
md"""
$(paso(:modifica)) Cambia el `0.8` por `0.9` y luego por `0.5`. ¿Qué pasa con la cantidad de círculos? ¿Y si mueves el centro hacia arriba (`y - 0.2 * radio`) en lugar de a la derecha?
"""

# ╔═╡ d7a44d85-0bc6-5ab3-b092-688d70fbaae0
md"""
### Un árbol fractal

$(paso(:idea)) Un árbol es un tronco con dos árboles más pequeños encima... ¡y cada uno de ellos también! Esa frase ya es una función recursiva. El `nivel` cuenta cuántas veces más se puede ramificar; cuando llega a 0, paramos.

**nivel** = $(@bind nivel_arbol deslizador(1:11, default = 8))

**ángulo de las ramas** = $(@bind giro_arbol deslizador(5:5:90, default = 25))
"""

# ╔═╡ 433c1c96-e96f-5d91-9a2f-205ee0e44fc2
function rama(x, y, largo, angulo, giro, nivel)
    if nivel == 0                                  # caso base: no hay más ramas
        return Forma[]
    end
    x2 = x + largo * cos(angulo)                   # punta de esta rama
    y2 = y - largo * sin(angulo)                   # (restamos: en pantalla, arriba es y más chica)
    color = nivel > 3 ? "#7A4A24" : "#3F9B2F"      # tronco café, hojas verdes
    esta_rama = linea(x, y, x2, y2, color, nivel)
    izquierda = rama(x2, y2, 0.72 * largo, angulo + giro, giro, nivel - 1)
    derecha   = rama(x2, y2, 0.72 * largo, angulo - giro, giro, nivel - 1)
    return [esta_rama; izquierda; derecha]
end

# ╔═╡ 2078d7ae-c3d2-5012-aa7c-ca0f08d63f27
lienzo(rama(250, 295, 80, π / 2, deg2rad(giro_arbol), nivel_arbol); fondo = "#F2F8FF")

# ╔═╡ ff13761b-ab1f-5312-8510-fba7fcd2a28b
md"""
$(paso(:comprueba)) ¿Qué pasaría si `rama` **no** tuviera el `if nivel == 0`?

$(@bind q_recursion opciones([
    "Dibujaría solo el tronco",
    "Se llamaría a sí misma para siempre y Julia mostraría un error",
    "Dibujaría un árbol infinito perfecto",
]))
"""

# ╔═╡ 4a6ad438-82a6-529c-ad3f-f47a886ba591
corregir(q_recursion, "Se llamaría a sí misma para siempre y Julia mostraría un error",
    "Sin caso base, `nivel` bajaría a −1, −2, −3... sin parar. La computadora se queda sin espacio para recordar tantas llamadas y aparece un `StackOverflowError`. Por eso **toda** función recursiva necesita un caso base.",
    "Imagina matrioskas sin una muñeca final: ¿cuándo dejarías de abrir?")

# ╔═╡ b96c7c13-8396-57c1-96bc-74641b759479
md"""
### El triángulo de Sierpinski

$(paso(:idea)) Toma un triángulo, divídelo en 4 uniendo los puntos medios de sus lados, quita el del centro y repite con los 3 que quedan. El punto medio entre `a` y `b` se calcula como `(a .+ b) ./ 2`: el punto (`.`) hace la cuenta para la `x` y para la `y` a la vez.

$(paso(:predice)) En el nivel 0 hay 1 triángulo. ¿Cuántos habrá en el nivel 3? ¿Y en el 7?

**nivel** = $(@bind nivel_sierpinski deslizador(0:7, default = 4))
"""

# ╔═╡ 49e9b3b4-f058-5266-9507-e389a3a98386
function sierpinski(a, b, c, nivel)
    if nivel == 0                                   # caso base: dibuja un triángulo
        return [poligono([a, b, c], "#9558B2")]
    end
    ab = (a .+ b) ./ 2                              # puntos medios de los lados
    bc = (b .+ c) ./ 2
    ca = (c .+ a) ./ 2
    return [sierpinski(a, ab, ca, nivel - 1);       # tres copias más pequeñas
            sierpinski(ab, b, bc, nivel - 1);
            sierpinski(ca, bc, c, nivel - 1)]
end

# ╔═╡ 78046908-0240-5eab-81da-aed9bf77549c
lienzo(sierpinski((250, 12), (70, 290), (430, 290), nivel_sierpinski))

# ╔═╡ f7325469-4dca-5ed0-8136-4f3805bba862
md"Triángulos dibujados en el nivel **$(nivel_sierpinski)**: 3 elevado a $(nivel_sierpinski) = **$(3^nivel_sierpinski)**. ¡Cada nivel multiplica por 3!"

# ╔═╡ d18adbde-eec8-5c86-8357-fa3646d7561e
md"""
### ¡Sorpresa! El mismo triángulo, escondido en los números

$(paso(:idea)) En el **triángulo de Pascal** cada número es la suma de los dos que tiene encima. Julia lo calcula con `binomial(fila, col)`. Ahora pintemos de morado solo los números **impares** (`% 2 == 1`, nuestro viejo amigo el residuo)...

$(paso(:predice)) ¿Qué figura crees que aparecerá?
"""

# ╔═╡ c908107a-7c00-5ef0-abb9-48d371744f74
let
    n = 64
    [binomial(fila, col) % 2 == 1 ? RGB(0.58, 0.35, 0.7) : RGB(1, 1, 1) for fila in 0:n-1, col in 0:n-1]
end

# ╔═╡ 2673c51e-0f82-54df-9ad6-53fc669aee31
plegable("Para curiosos: ¿y si cambio 64 por 100?", md"Aparece un `OverflowError`: los números del triángulo de Pascal crecen tanto que ya no caben en un `Int64`. Solución: usa números gigantes con `binomial(big(fila), col)`. Es otro ejemplo de por qué importan los tipos.")

# ╔═╡ 9de2fceb-6919-5951-9daf-3c8326d6eb7a
md"""
### El conjunto de Mandelbrot

$(paso(:idea)) Esta es quizá la imagen más famosa de las matemáticas, y se hace **solo con lo que ya sabes**: un bucle y un if. Julia trae incorporados los **números complejos** (puntos del plano escritos como `x + y*im`):
"""

# ╔═╡ c7360e49-3b93-5ea3-8e9f-7715d642b6c5
(; punto = 1 + 2im, al_cuadrado = (1 + 2im)^2, distancia_al_centro = abs(3 + 4im))

# ╔═╡ f22641ab-2c5d-5313-880b-751ab00aa93b
md"""
$(paso(:investiga)) La receta para cada punto `c` de la imagen:

1. Empieza con `z = 0`.
2. Repite: ``z \to z^2 + c``.
3. Si `z` se aleja más de 2 del centro, **escapó**: ese punto no está en el conjunto. Lo coloreamos según **cuántos pasos** tardó en escapar.
4. Si nunca escapa, pertenece al conjunto: lo pintamos de negro.
"""

# ╔═╡ da5e9b74-df29-5373-9da2-3721d65cf4f7
function mandelbrot(c, max_pasos)
    z = 0.0 + 0.0im
    for n in 1:max_pasos
        z = z^2 + c
        if abs(z) > 2
            return n               # escapó en el paso n
        end
    end
    return max_pasos               # nunca escapó: pertenece al conjunto
end

# ╔═╡ 5e27f633-9a42-5121-b104-c3a0d1c915a5
"Convierte la cantidad de pasos en un color (negro si el punto nunca escapó)."
function paleta(pasos, max_pasos)
    if pasos >= max_pasos
        return RGB(0.04, 0.03, 0.08)
    end
    paradas = [RGB(0.09, 0.09, 0.15), RGB(0.25, 0.39, 0.85), RGB(0.58, 0.35, 0.70),
               RGB(0.88, 0.34, 0.17), RGB(1.00, 0.85, 0.40)]
    t = sqrt(pasos / max_pasos) * (length(paradas) - 1)
    i = min(floor(Int, t), length(paradas) - 2)
    mezclar(paradas[i + 1], paradas[i + 2], t - i)
end

# ╔═╡ 4bc0d677-c556-5e4c-a388-6bcd34b7c94e
vistas_mandel = [                      # agrega tus propios lugares favoritos
    "Vista completa"                 => -0.6 + 0.0im,
    "Valle de los caballitos de mar" => -0.7436 + 0.1318im,
    "Valle de los elefantes"         => 0.2825 + 0.0103im,
    "Un Mandelbrot en miniatura"     => -1.7549 + 0.0im,
]

# ╔═╡ 0e363552-a7da-5959-9493-fac0d4bfd8b9
md"""
$(paso(:ejecuta)) Explora. Al hacer zoom, sube los pasos para ver más detalle.

**lugar** = $(@bind vista_mandel selector(first.(vistas_mandel)))

**zoom** = $(@bind zoom_mandel deslizador(1:14, default = 1))

**pasos** = $(@bind pasos_mandel deslizador(20:20:400, default = 80))
"""

# ╔═╡ acfc1de1-2b9f-5b16-b664-596de543d8fb
let
    centro = Dict(vistas_mandel)[vista_mandel]
    mitad = 1.6 / 2.0^(zoom_mandel - 1)          # cada zoom ve la mitad del ancho
    xs = range(real(centro) - mitad, real(centro) + mitad; length = 300)
    ys = range(imag(centro) + 0.7 * mitad, imag(centro) - 0.7 * mitad; length = 210)
    [paleta(mandelbrot(complex(x, y), pasos_mandel), pasos_mandel) for y in ys, x in xs]
end

# ╔═╡ 6213062b-6dc5-57ba-a8df-e4f8cb252db9
md"""
$(paso(:modifica)) Haz zoom en *Valle de los caballitos de mar* con pocos pasos (20) y luego con muchos (300). ¿Por qué cambian los bordes? Abre la celda oculta de `paleta` (el ojo 👁) e inventa tus propios colores.

!!! info "¿Por qué aquí Julia brilla?"
    La imagen tiene 63 000 píxeles y cada uno puede repetir la receta cientos de veces: millones de cuentas cada vez que mueves un deslizador. Julia compila tu función a código de máquina, por eso responde casi al instante.
"""

# ╔═╡ c7e8da74-b4fd-59df-9b7e-1d16fac5650d
md"""
!!! info "📌 En resumen"
    - Una función recursiva se llama a sí misma con un problema más pequeño.
    - Siempre necesita un **caso base**; sin él, nunca termina.
    - Reglas simples repetidas muchas veces crean figuras complejas: eso es un fractal.
"""

# ╔═╡ 24fbf84a-44b9-5a9e-b776-328bc174dac9
md"""
$(kicker("10 · Conoce Julia"))

# ¿Por qué Julia?

$(paso(:idea)) Julia se presentó al mundo en 2012, creada por un equipo del MIT, para que científicas y científicos escribieran código **fácil de leer y rápido**, sin tener que reescribirlo en otro lenguaje para que funcione bien.
"""

# ╔═╡ 3b7747ea-02f5-5d51-9806-5ef65bc00ce4
html"""
<div class="cards">
  <div class="card red"><b>Rendimiento</b>Compila tu código a lenguaje de máquina justo antes de usarlo (JIT). Por eso el Mandelbrot hace millones de cuentas en un instante.</div>
  <div class="card green"><b>Multiple dispatch</b>Una función elige qué hacer según los tipos de <i>todos</i> sus datos.</div>
  <div class="card purple"><b>Fácil de leer</b>No declaras el tipo de cada variable, aceptas acentos y símbolos como π.</div>
  <div class="card blue"><b>Ecosistema</b>Paquetes para ciencia de datos, simulación, gráficos, clima, IA y más.</div>
</div>
"""

# ╔═╡ 462098c7-ae84-5c79-8636-8268ac7cca25
md"""
### Multiple dispatch, en dibujos

$(paso(:idea)) El verbo *abrir* significa cosas distintas según lo que abras: una puerta, un libro, una cuenta de banco. No cambias de verbo; el **tipo** de cosa decide la acción. En Julia, una función puede tener varios **métodos**, uno por cada tipo de dato.

$(paso(:predice)) Hay tres versiones de `mostrar`. ¿Qué dibujará cada una de las tres celdas siguientes?
"""

# ╔═╡ 1547e2de-4e2c-5096-b103-69ccab3a083a
begin
    mostrar(n::Integer) = [circulo(42 * k, 150, 16, "#4063D8") for k in 1:n]   # un número → tantos círculos
    mostrar(palabra::AbstractString) = texto(250, 150, palabra, "#9558B2", 56) # un texto → letras grandes
    mostrar(c::RGB) = circulo(250, 150, 110, c)                                 # un color → un círculo de ese color
end

# ╔═╡ f9f052b1-673f-5832-b668-4fca21f495b3
mostrar(7)

# ╔═╡ 6e65d5ea-c54e-5298-91c9-9b60dbadb81f
mostrar("¡Hola, Julia!")

# ╔═╡ 3a311236-354e-54ed-93fd-09da4bfc2cd6
mostrar(RGB(0.22, 0.6, 0.15))

# ╔═╡ b5a717ba-4e00-5f7f-a86b-539d7521e726
methods(mostrar)

# ╔═╡ d88860f8-16eb-59f4-945d-70c10244ae90
md"""
$(paso(:investiga)) ¡Ya lo habías usado sin saberlo! Desde la primera sección, `circulo` acepta el color como texto (`"gold"`) **o** como `RGB(...)`. Por dentro, la función `colorcss` tiene un método para cada tipo:
"""

# ╔═╡ 7a7d5169-370d-5c1c-a398-eddb1377e526
methods(colorcss)

# ╔═╡ 4904fad7-4953-54e5-bfe1-814a022fefc5
md"""
$(paso(:comprueba)) En multiple dispatch, ¿qué decide qué método se ejecuta?

$(@bind q_dispatch opciones([
    "El nombre del archivo donde está la función",
    "Los tipos de los datos con que la llamas",
    "El orden en que escribiste los métodos",
]))
"""

# ╔═╡ f8ba0d23-e3e5-5a4c-9995-2130e3fdc738
corregir(q_dispatch, "Los tipos de los datos con que la llamas",
    "Por eso `mostrar(7)` y `mostrar(\"Julia\")` hacen cosas distintas aunque la función se llame igual.",
    "Compara `mostrar(7)` y `mostrar(\"Hola\")`: ¿qué es lo único que cambia?")

# ╔═╡ 5654f835-3f0e-5a90-8718-47af68845645
md"""
!!! info "📌 En resumen"
    - Julia es fácil de leer y, a la vez, rápida.
    - Una función puede tener varios **métodos**, uno por tipo de dato.
    - Julia elige el método según los **tipos** de los datos: eso es *multiple dispatch*.
"""

# ╔═╡ 25b940ae-4e21-509c-8fc9-2cc6cad047c7
md"""
$(kicker("11 · Proyecto"))

# Crea tu póster generativo

$(paso(:crea)) Llegó tu turno de crear algo **tuyo**. Un póster *generativo* es un dibujo hecho con reglas: cada vez que lo ejecutas puede salir un poco distinto. Aquí tienes un ejemplo para arrancar; modifícalo hasta que ya no se parezca.

!!! tip "Tu póster debe usar"
    - ✅ al menos un **bucle** o **comprensión**,
    - ✅ al menos una **decisión** (`if` o `? :`),
    - ✅ al menos una **función** escrita por ti,
    - ⭐ extra: un deslizador, un color hecho con `RGB`, o un fractal.
"""

# ╔═╡ 2693e7e4-ca60-55fa-b1a0-c1067a0f4bda
let
    # Una función propia: una estrella de 5 picos
    function estrella(cx, cy, r, color)
        puntos = [(cx + (isodd(k) ? r : r / 2.5) * cos(π * k / 5 - π / 2),
                   cy + (isodd(k) ? r : r / 2.5) * sin(π * k / 5 - π / 2)) for k in 1:10]
        poligono(puntos, color)
    end

    # rand() da un decimal al azar entre 0 y 1; rand(0:500), un entero al azar entre 0 y 500.
    # Por eso cada vez que ejecutas la celda (Shift + Enter) el cielo sale distinto.
    cielo     = [circulo(rand(0:500), rand(0:200), rand() * 1.8, "white") for _ in 1:120]
    luna      = circulo(400, 70, 40, "#F6E7B4")
    montanas  = [poligono([(x, 300), (x + 90, rand(150:220)), (x + 180, 300)],
                          isodd(x ÷ 90) ? "#2D3561" : "#3E4A80") for x in -60:90:500]
    estrellas = [estrella(rand(30:470), rand(20:150), 9, "#FFD166") for _ in 1:4]

    lienzo(cielo, luna, montanas, estrellas, texto(250, 270, "NeoCats", "#FFFFFF", 30);
           fondo = "#10142A")
end

# ╔═╡ 6f4f509b-9f46-5752-b2da-fad1e7b02cba
md"""
**Ideas si no sabes por dónde empezar:**
- 🌆 Una ciudad de noche: rectángulos de alturas al azar con ventanas encendidas (`rand() < 0.3 ? "gold" : "#333"`).
- 🌸 Un jardín de girasoles de distintos tamaños.
- 🧶 Un tapete: un tablero donde el color dependa de `(fila * col) % 5`.
- 🌳 Un bosque: varios árboles fractales en distintas posiciones.

$(paso(:comprueba)) Muestra tu póster a alguien y explícale **una regla** que hayas programado. Si puedes explicarla, ¡la entendiste!
"""

# ╔═╡ 5e2aa5ff-cad8-5b7e-9976-60c51a5aca1a
md"""
$(kicker("12 · Autoevaluación"))

# ¿Qué ya sabes hacer?

Marca con sinceridad lo que podrías hacer **sin mirar el cuaderno**. Lo que quede sin marcar es lo que conviene repasar.

$(@bind progreso casillas(metas_del_curso))
"""

# ╔═╡ e7d64d7c-34c4-5bd8-8dfc-9968b8584d7c
let
    n_listos = length(progreso)
    n_total = length(metas_del_curso)
    mensaje = n_listos == n_total ?
        "¡Completaste el recorrido! Ya estás listo para gráficos y paquetes." :
        "Repasa las secciones que dejaste sin marcar y vuelve cuando quieras."
    HTML("""
    <progress value="$n_listos" max="$n_total" style="width:100%; height:14px; accent-color:#389826"></progress>
    <p><b>$n_listos de $n_total</b> · $mensaje</p>
    """)
end

# ╔═╡ 5e95a245-766d-522d-a3f7-f0409e9df491
md"""
$(kicker("13 · Referencia"))

# Glosario rápido

| Término | Significado |
|:--------|:------------|
| **Celda** | Bloque de código o texto que se ejecuta por separado en Pluto |
| **Variable** | Nombre (etiqueta) pegado a un valor |
| **Tipo** | La clase de un dato: entero, decimal, texto, color... |
| **Bool** | Un valor de sí o no: `true` o `false` |
| **Condicional** | `if / elseif / else`: elegir un camino según una pregunta |
| **Bucle** | Repetir instrucciones: `for i in 1:n ... end` |
| **Comprensión** | Forma corta de crear una lista o matriz con un bucle |
| **Matriz** | Tabla de valores en filas y columnas; una imagen es una matriz de colores |
| **Píxel** | Cada cuadrito de color de una imagen |
| **Función** | Instrucción con nombre que recibe datos y devuelve un resultado |
| **Parámetro** | Cada dato que recibe una función, como `x`, `y` y `color` en `carita(x, y, color)` |
| **Método** | Una versión de una función para ciertos tipos de datos |
| **Broadcasting** | Aplicar una función a cada elemento con el punto: `f.(lista)` |
| **Recursión** | Una función que se llama a sí misma con un problema más pequeño |
| **Caso base** | La condición que detiene la recursión |
| **Fractal** | Figura que contiene copias más pequeñas de sí misma |
| **Reactivo** | Que se actualiza solo cuando cambian los datos de los que depende |

# Referencias

**Pedagogía en la que se basa este cuaderno**
- Sentance, S., Waite, J. y Kallia, M. (2019). *Teaching computer programming with PRIMM: a sociocultural perspective*. Computer Science Education, 29(2–3). [doi:10.1080/08993408.2019.1608781](https://doi.org/10.1080/08993408.2019.1608781)
- Raspberry Pi Foundation. *Using PRIMM to structure programming lessons* (guía breve para docentes). [teachcomputing.org](https://static.teachcomputing.org/pedagogy/QR11-PRIMM.pdf)
- Lee, I. et al. (2011). *Computational thinking for youth in practice*. ACM Inroads, 2(1), 32–37. (Progresión *Use–Modify–Create*.)
- Edelman, A. et al. *Introduction to Computational Thinking* (MIT 18.S191), curso en Julia y Pluto que enseña con imágenes como matrices. [computationalthinking.mit.edu](https://computationalthinking.mit.edu/)

**Matemáticas de los dibujos**
- Vogel, H. (1979). *A better way to construct the sunflower head*. Mathematical Biosciences, 44, 179–189. (Modelo del girasol.)
- Triángulo de Sierpinski, triángulo de Pascal y conjunto de Mandelbrot: buenos temas para seguir investigando.

**Manual de Julia**
- [Variables](https://docs.julialang.org/en/v1/manual/variables/) · [Números](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/) · [Números complejos](https://docs.julialang.org/en/v1/manual/complex-and-rational-numbers/)
- [Funciones](https://docs.julialang.org/en/v1/manual/functions/) · [Control de flujo](https://docs.julialang.org/en/v1/manual/control-flow/) · [Tipos](https://docs.julialang.org/en/v1/manual/types/) · [Métodos](https://docs.julialang.org/en/v1/manual/methods/)

**Ecosistema**
- [Julia](https://julialang.org/) y su página de [aprendizaje](https://julialang.org/learning/)
- [Pluto.jl](https://plutojl.org/) y sus [cuadernos destacados](https://featured.plutojl.org/)

**Próximo paso:** gráficos con paquetes (`Plots.jl`, `Makie.jl`) e imágenes reales con `Images.jl`. ¡Todo lo que aprendiste aquí funciona igual allá!
"""

# ╔═╡ 238789e0-36e0-58c4-91dc-1e4e1f399714
md"""
$(kicker("14 · Detrás del telón"))

# Detrás del telón

Este cuaderno **no instala ningún paquete**. Los deslizadores, el reloj, los colores, los dibujos y las imágenes están hechos con Julia puro en las celdas de abajo (pulsa el ojo 👁 para ver su código). Puedes leerlas cuando te sientas listo: usan exactamente las ideas que aprendiste (tipos, funciones, métodos y bucles), más un poco de HTML y JavaScript.
"""

# ╔═╡ d4bd09e1-219d-5910-baa1-76a984570bd0
html"""
<div class="footer">
  <strong>NeoCats</strong> · Julia desde cero: dibuja, decide, repite y sorpréndete
  <br><span style="font-size:.85rem">Aprender programación, una celda a la vez · Hecho con Pluto.jl, sin paquetes externos</span>
</div>
"""

# ╔═╡ Cell order:
# ╟─37b8dbc0-1594-544e-a200-1a2a7d0bc933
# ╟─af950c3f-e708-5fbf-8d7d-6f77189bb3b9
# ╟─125e5e2f-1a3c-5634-a0b8-32303b9533e4
# ╟─24a57443-3122-5ead-a82c-2bc75a97e59e
# ╟─e4dfee34-583e-5d46-9174-5b8307ceb1aa
# ╟─4a35c9c4-2529-5f68-84df-592e4d3b019d
# ╟─749ea987-25ee-5080-abb6-c70f950b295e
# ╠═7b1a46a7-3967-5950-875b-d6c40fbbcb4b
# ╟─34831c1e-0a70-5b85-935d-8b56eec10b6b
# ╟─e7b3004e-ab0a-5846-818d-545377088773
# ╟─3f7bb57f-49c6-5695-a4ca-1a042de90124
# ╠═b26cffa1-32bb-5d21-bcf4-8eca253768cb
# ╟─79689df4-1fe2-50c4-b9a5-8dd13a006d44
# ╠═49bfb525-c001-5559-adc5-2845d801a8b5
# ╟─1ed120e2-cf18-5391-b4f5-c370ca34e819
# ╟─7888b9a1-4c30-5059-826c-ed96e1986939
# ╟─5399faa5-9085-5372-bd5f-93efcc540666
# ╟─edb26d1b-dfbb-5347-a5cf-c77573000ff7
# ╟─45a79e68-0121-5171-8a89-e7f9d4ff08f0
# ╠═dc2dfc40-8506-5f3e-b7b5-d3d173401a1a
# ╟─2fbcd109-151e-59e0-8cbe-e3f54443e884
# ╠═f4069fb6-ae90-5525-ab6e-07e777e7be93
# ╠═f2daaa84-b687-5eff-b409-9152172ffc62
# ╟─f4ee7510-ba36-52d5-bc25-b4235658c2ca
# ╟─7741973b-2a61-57cf-be9d-b89169f482ef
# ╠═dfdf7a44-ef33-5075-8bf2-0116b1cd2d61
# ╟─55a7d081-929f-5cba-a153-0ffa91a90d61
# ╟─e31d58f5-e76d-526f-b10d-18c5b81a3cf3
# ╟─4bc7e2d1-8d6f-5f0f-9ad3-49c78f3fea90
# ╠═caa1c85d-7830-5a8f-af34-992d5e190c86
# ╟─e6f72abf-fbf7-5f84-a4e4-ad93347a7ee6
# ╟─6c4b9d77-76f4-599f-9a65-70d15e462c28
# ╟─cfa51137-f039-578b-8d98-4ae8a1fa20b4
# ╟─c01a61aa-409d-5b70-9302-6e3b6163384d
# ╟─65f9e02b-b218-5b34-a394-4f312cf198e9
# ╠═625a857a-a907-51c5-b098-681e8d237985
# ╠═c90bf095-6cf4-5bee-b6e8-889a83c4067e
# ╟─44f909e2-a871-531a-8c79-e8f50cd7ded8
# ╟─4b9f912d-6853-573d-b720-2662bc032fd9
# ╟─92a63695-540e-5469-84f0-9fb33049a12b
# ╠═11316845-1e12-501e-847d-2c9ba830aca0
# ╟─8e86bf9f-787c-5abf-8eba-ede9982790ff
# ╟─030e095c-9590-51ce-be57-482566b3f03d
# ╟─46e289f5-819e-55b2-9b73-7f0ed20ed07b
# ╠═0c37aa50-8dcd-5fcd-8c3f-567ed35a3438
# ╟─5aea9618-96fd-5cdb-aac7-1db9cd527f88
# ╟─69945c8c-b7fc-5f43-8fd8-c2638fc3984c
# ╠═2e29f882-ae97-5f99-93ec-0abdafe88404
# ╠═1bc29bd8-9103-56e4-9703-2544e6bcdc30
# ╟─3a3ff5e7-ee61-5da9-aef8-d4f19287d969
# ╠═3a89edb5-9e9a-5064-8a7c-1b022463d86f
# ╟─6b72c7ce-92cb-5e3e-84b3-a7551afba97c
# ╟─b6f5cd78-7e05-5291-be52-aeb69a27b1ec
# ╟─c3366bb2-389b-525a-80a1-189e53417456
# ╟─b5933304-abb7-5dea-b3a6-0af926bf1359
# ╠═f50bf0f2-2c18-5242-b522-ef23c315627b
# ╟─c698936a-13f9-53af-95d0-a926802c35f1
# ╟─09fa005e-030d-5ed4-a01a-a4c599589192
# ╠═547d9d82-1ffd-5782-b7bd-b282e621d2c1
# ╟─7e19cda5-2737-547e-aa5b-ffefc2bae233
# ╟─d1134f1b-05e9-501b-8677-8af934fbd6eb
# ╟─422756c9-a724-5cab-b358-a6ed8c3958bd
# ╟─efc3bd2c-50ca-5ff9-86bb-4d2b21c4b4af
# ╠═0ddbead7-ac3d-5828-93bc-86ea0ea50746
# ╟─bc65cc80-33f6-534d-93d8-c4d77d103464
# ╠═5bb4c8dc-4762-5087-b041-209032445382
# ╟─584340f3-a55e-5a0c-8109-70f8692f8a23
# ╠═69e4ad31-be84-5b03-82a4-1aa11662743b
# ╟─22364ee2-5171-56aa-8d88-55e76e33b75c
# ╟─0803b2e1-6720-57c4-84f0-ad5fcb1fddb8
# ╠═9c853fd7-0bb6-5131-abf8-76f129b5f248
# ╟─526cd332-e7eb-59f8-876f-0b5c4425258d
# ╠═6c7ef08f-e200-5128-972c-3e935c89b0d9
# ╟─6e19a889-31b8-5f3b-9405-2154a5d58a91
# ╠═53f2d0c6-988c-5299-968f-1065b4a3674b
# ╟─a22116c1-18c7-5a54-bbb1-a39fc25c626f
# ╟─723b90e3-955c-5661-b68d-43831f06efdc
# ╟─7986bc00-a3f8-535c-a7a3-c36d83e87c81
# ╟─f6614a64-f504-5a8a-993f-da50512fad3f
# ╠═7e45991a-ebbf-5ac7-849d-dc4c4dee4e7a
# ╟─2a53822d-ac3b-561a-829f-6d2312f14248
# ╟─1f0404cb-833e-5d1f-afae-77b292e319ef
# ╠═f1ab4626-766c-5805-bcc7-c088435c9ec3
# ╟─f20489ce-9b81-5de6-9283-7c57509db4d6
# ╟─f043307d-6ee8-5128-97e2-98a5f5afeafa
# ╟─f1751698-85d0-59f7-ad4f-4a3d6b06f336
# ╟─0881513e-8328-5c34-b083-5062c02a6333
# ╟─b84acc70-cb52-5a3d-8496-7cbbf84d1fca
# ╠═be7b3eac-23c0-53d2-a769-f9df84f721bf
# ╟─38441829-6af1-5d31-b89e-1c58bc895c69
# ╠═41ab873a-e6ef-5da5-9926-a41e7df3652a
# ╟─6a4cd1eb-f945-5944-9e29-e74f0b5249b5
# ╠═fd242021-d8a6-5f3a-a052-8d844ab1bfc0
# ╟─34d1c4f5-c555-53ca-8540-ea326b24aefc
# ╟─8beb0928-5f5c-5bd8-a002-d87d11a8be8b
# ╟─ba3076d6-0170-5b2c-90cb-9343b6292b07
# ╠═a8bed635-6deb-5b4e-8f17-583c25e49b35
# ╟─c80a6027-9946-50a8-b938-9116b3bba1cf
# ╠═356e9876-b3cb-5eca-a609-9f3f93931bd4
# ╟─153aa4c8-3a69-5d4d-ad5d-a0e6eaa5f0b9
# ╟─39a90505-2df7-54a4-93ee-c2e07f4b6c19
# ╟─39a9025e-ffb4-57b8-9c9c-ea4588043a4a
# ╠═09e2e19b-cb21-5c16-bca2-9055357c4e41
# ╟─0cc3c8f7-59a7-53f1-a792-1db589417d14
# ╠═f32da354-0321-5bd6-aed0-359ea222fe17
# ╠═c8a2cd5c-64d4-53e3-8547-ae0bf46ef8ed
# ╟─281dfa3c-72e0-5338-b839-9402c20ab38c
# ╟─716b93d2-7dcb-5b21-ae81-8141f291f6c9
# ╟─6ffbe233-a5af-5e9c-a407-f213771d5b3a
# ╠═b7737785-bbe3-5e2e-bfdf-9ff85a3594e2
# ╟─44058e37-6c46-57a7-ae64-13a92e15aa8d
# ╠═43f73642-dee0-5152-b9db-8fcc4a3827db
# ╠═42d6694e-330e-501a-8362-c9488aa93dd4
# ╠═98c704e3-ff1a-527c-967a-ed91f334768a
# ╠═24a9843d-d154-5134-bf35-b9fe811edfe3
# ╟─70edf63c-c93f-5d1e-b962-a9b4a93427ee
# ╟─2594872f-4d9b-5296-888e-c7ef112c5957
# ╠═486745b8-08b3-5b77-8460-57e5e93b47bb
# ╟─c5d21499-abba-5638-a5c2-54dbe9e45c38
# ╟─0decb5a6-5945-59f4-ba07-38c8d0b0762f
# ╟─c287f6ef-514e-5cdb-8dd0-8ad96fa31a92
# ╟─4b10d934-b92c-5ddb-b7af-4caaef6e2459
# ╠═ec276f41-b11a-5fef-a708-c6791bcb8ff1
# ╠═c7c31467-916d-527f-b796-040688550a1b
# ╟─b2dace1a-1ff6-5be8-ad6a-1637ed911f5f
# ╟─d7a44d85-0bc6-5ab3-b092-688d70fbaae0
# ╠═433c1c96-e96f-5d91-9a2f-205ee0e44fc2
# ╠═2078d7ae-c3d2-5012-aa7c-ca0f08d63f27
# ╟─ff13761b-ab1f-5312-8510-fba7fcd2a28b
# ╟─4a6ad438-82a6-529c-ad3f-f47a886ba591
# ╟─b96c7c13-8396-57c1-96bc-74641b759479
# ╠═49e9b3b4-f058-5266-9507-e389a3a98386
# ╠═78046908-0240-5eab-81da-aed9bf77549c
# ╟─f7325469-4dca-5ed0-8136-4f3805bba862
# ╟─d18adbde-eec8-5c86-8357-fa3646d7561e
# ╠═c908107a-7c00-5ef0-abb9-48d371744f74
# ╟─2673c51e-0f82-54df-9ad6-53fc669aee31
# ╟─9de2fceb-6919-5951-9daf-3c8326d6eb7a
# ╠═c7360e49-3b93-5ea3-8e9f-7715d642b6c5
# ╟─f22641ab-2c5d-5313-880b-751ab00aa93b
# ╠═da5e9b74-df29-5373-9da2-3721d65cf4f7
# ╟─5e27f633-9a42-5121-b104-c3a0d1c915a5
# ╠═4bc0d677-c556-5e4c-a388-6bcd34b7c94e
# ╟─0e363552-a7da-5959-9493-fac0d4bfd8b9
# ╠═acfc1de1-2b9f-5b16-b664-596de543d8fb
# ╟─6213062b-6dc5-57ba-a8df-e4f8cb252db9
# ╟─c7e8da74-b4fd-59df-9b7e-1d16fac5650d
# ╟─24fbf84a-44b9-5a9e-b776-328bc174dac9
# ╟─3b7747ea-02f5-5d51-9806-5ef65bc00ce4
# ╟─462098c7-ae84-5c79-8636-8268ac7cca25
# ╠═1547e2de-4e2c-5096-b103-69ccab3a083a
# ╠═f9f052b1-673f-5832-b668-4fca21f495b3
# ╠═6e65d5ea-c54e-5298-91c9-9b60dbadb81f
# ╠═3a311236-354e-54ed-93fd-09da4bfc2cd6
# ╠═b5a717ba-4e00-5f7f-a86b-539d7521e726
# ╟─d88860f8-16eb-59f4-945d-70c10244ae90
# ╠═7a7d5169-370d-5c1c-a398-eddb1377e526
# ╟─4904fad7-4953-54e5-bfe1-814a022fefc5
# ╟─f8ba0d23-e3e5-5a4c-9995-2130e3fdc738
# ╟─5654f835-3f0e-5a90-8718-47af68845645
# ╟─25b940ae-4e21-509c-8fc9-2cc6cad047c7
# ╠═2693e7e4-ca60-55fa-b1a0-c1067a0f4bda
# ╟─6f4f509b-9f46-5752-b2da-fad1e7b02cba
# ╟─5e2aa5ff-cad8-5b7e-9976-60c51a5aca1a
# ╟─e7d64d7c-34c4-5bd8-8dfc-9968b8584d7c
# ╟─5e95a245-766d-522d-a3f7-f0409e9df491
# ╟─238789e0-36e0-58c4-91dc-1e4e1f399714
# ╟─901c517d-4cec-5b2a-baaf-3a5207c6f620
# ╟─23c0d96f-3b96-574e-b60d-18a24a49e870
# ╟─2ac73a33-2257-5d63-939f-cfed28ff00da
# ╟─5e8c75de-915d-55cb-9a18-c290a06e3d36
# ╟─d4bd09e1-219d-5910-baa1-76a984570bd0
