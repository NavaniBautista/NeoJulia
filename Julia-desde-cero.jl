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

# ╔═╡ d0000001-0000-5000-8000-000000000001
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
.hero p { color: #E8E2EF !important; font-family: var(--font-body); font-size: 1.1rem !important; line-height: 1.75; max-width: 620px; margin: 0; }
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
.nivel { font-family: var(--font-body); letter-spacing: .25em; color: var(--accent); font-size: .85rem; font-weight: 700; }

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
.card.gold { border-top: 4px solid #D99A00; }               .card.gold b { color: #D99A00; }

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
.deslizador output { min-width: 3rem; font-weight: 800; color: var(--julia-purple); }
.campo-texto {
    font-family: var(--font-body); font-size: 1rem; padding: .4rem .8rem; border-radius: 10px;
    border: 1px solid color-mix(in srgb, currentColor 25%, transparent);
    background: color-mix(in srgb, currentColor 4%, transparent); color: inherit;
}

/* ---------- VISUALIZACIONES ---------- */
.viz { margin: 1rem 0; }

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
</style>

<div class="hero">
  <div class="eyebrow">NeoCats · Cuaderno interactivo</div>
  <div class="julia-dots"><span></span><span></span><span></span><span></span></div>
  <h1>Julia desde cero</h1>
  <p>De tu primer «Hola, mundo» a fractales y partículas cuánticas. Empiezas despacio, y cada nivel sube un peldaño: aprendes programación viendo moverse las matemáticas.</p>
</div>
"""

# ╔═╡ d0000001-0000-5000-8000-000000000002
html"""
<p style="margin:.4rem 0 0; font-weight:700; font-family:var(--font-body)">Tu ruta · aprox. 1 h 30 · cada nivel sube la apuesta</p>
<div class="cards">
  <div class="card red"><b>Nivel 1 · Despegue</b>Variables, números, tipos y errores. Con calma y sin saltarse nada.<br><small style="opacity:.7">≈ 25 min</small></div>
  <div class="card green"><b>Nivel 2 · Ondas</b>Funciones, arreglos y series de Fourier que verás moverse.<br><small style="opacity:.7">≈ 20 min</small></div>
  <div class="card purple"><b>Nivel 3 · Fractales</b>Bucles y números complejos: tu propio conjunto de Mandelbrot.<br><small style="opacity:.7">≈ 20 min</small></div>
  <div class="card blue"><b>Nivel 4 · Cuántica</b>Una partícula en una caja y su función de onda.<br><small style="opacity:.7">≈ 15 min</small></div>
  <div class="card gold"><b>Nivel 5 · Tus tipos</b>Define tus propios objetos y deja que Julia elija por tipos.<br><small style="opacity:.7">≈ 10 min</small></div>
</div>
"""

# ╔═╡ d0000001-0000-5000-8000-000000000003
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

# ╔═╡ d0000001-0000-5000-8000-000000000004
begin
    function kicker(texto)
        num, etiqueta = split(texto, " · "; limit = 2)
        HTML("<span class=\"kicker\"><span class=\"kicker-num\">$num</span>$etiqueta</span>")
    end

    # Estrellas de dificultad (de 1 a 5)
    nivel(n) = HTML("<span class=\"nivel\">" * "★"^n * "☆"^(5 - n) * "</span>")

    aviso(tipo, titulo, texto) =
        Markdown.MD(Markdown.Admonition(tipo, titulo, [Markdown.parse(texto)]))

    # Desplegable propio (no depende de ningún paquete)
    plegable(titulo, contenido) = HTML("<details class=\"plegable\"><summary>$titulo</summary>" *
        sprint(show, MIME("text/html"), contenido) * "</details>")

    pendiente() = aviso("warning", "Pendiente", "Reemplaza `missing` por tu respuesta y la celda se corregirá sola.")
    correcto() = aviso("correct", "¡Correcto!", "Muy bien, sigue con el siguiente.")
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

# ╔═╡ d0000001-0000-5000-8000-000000000005
begin
    # Controles interactivos propios: HTML + JavaScript puro, sin PlutoUI.
    # Así el cuaderno no instala ni precompila ningún paquete (Binder arranca casi al instante).

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
            salida.textContent = barra.value;
            root.addEventListener('input', () => {
                root.value = barra.valueAsNumber;
                salida.textContent = barra.value;
            }, true);
        </script></span>""", default)
    end

    # Lista desplegable
    function selector(lista; default = first(lista))
        items = join(["""<option value="$(escapar_html(o))"$(o == default ? " selected" : "")>$(escapar_html(o))</option>""" for o in lista])
        Entrada("""<span><select class="campo-texto">$items</select><script>
            const root = currentScript.parentElement;
            const lista = root.querySelector('select');
            root.value = lista.value;
            root.addEventListener('input', () => { root.value = lista.value; }, true);
        </script></span>""", default)
    end
end;

# ╔═╡ d0000001-0000-5000-8000-000000000006
begin
    # Visualización sin paquetes: gráficas en SVG y mapas de color en <canvas>.

    function grafica(xs, series; etiquetas = String[], relleno = 0, punteadas = Int[])
        xs = collect(Float64, xs)
        series = [collect(Float64, s) for s in series]
        ancho, alto = 680, 280
        ml, mr, mt, mb = 48, 14, 26, 32
        colores = ["#4063D8", "#389826", "#9558B2", "#CB3C33"]

        ylo = minimum(minimum, series)
        yhi = maximum(maximum, series)
        if yhi - ylo < 1e-9
            ylo -= 1
            yhi += 1
        end
        pad = 0.08 * (yhi - ylo)
        ylo -= pad
        yhi += pad
        xlo, xhi = first(xs), last(xs)

        px(x) = ml + (x - xlo) / (xhi - xlo) * (ancho - ml - mr)
        py(y) = alto - mb - (y - ylo) / (yhi - ylo) * (alto - mt - mb)
        f2(v) = string(round(v, digits = 2) + 0.0)

        partes = String[]

        # Rejilla y marcas del eje y
        for v in range(ylo, yhi, length = 5)
            y = round(py(v), digits = 1)
            push!(partes, """<line x1="$ml" x2="$(ancho - mr)" y1="$y" y2="$y" stroke="currentColor" stroke-opacity=".12"/>""")
            push!(partes, """<text x="$(ml - 6)" y="$(y + 4)" text-anchor="end" font-size="11" fill="currentColor" fill-opacity=".65">$(f2(v))</text>""")
        end

        # Marcas del eje x
        for v in range(xlo, xhi, length = 5)
            x = round(px(v), digits = 1)
            push!(partes, """<text x="$x" y="$(alto - mb + 17)" text-anchor="middle" font-size="11" fill="currentColor" fill-opacity=".65">$(f2(v))</text>""")
        end

        # Línea del cero
        if ylo < 0 < yhi
            y0 = round(py(0.0), digits = 1)
            push!(partes, """<line x1="$ml" x2="$(ancho - mr)" y1="$y0" y2="$y0" stroke="currentColor" stroke-opacity=".4"/>""")
        end

        # Curvas
        for (i, s) in enumerate(series)
            c = colores[mod1(i, length(colores))]
            puntos = join(("$(round(px(x), digits = 1)),$(round(py(y), digits = 1))" for (x, y) in zip(xs, s)), " ")
            if i == relleno
                base = round(py(clamp(0.0, ylo, yhi)), digits = 1)
                x_ini = round(px(xs[1]), digits = 1)
                x_fin = round(px(xs[end]), digits = 1)
                push!(partes, """<polygon points="$x_ini,$base $puntos $x_fin,$base" fill="$c" fill-opacity=".18" stroke="none"/>""")
            end
            guiones = i in punteadas ? " stroke-dasharray=\"6 5\"" : ""
            push!(partes, """<polyline points="$puntos" fill="none" stroke="$c" stroke-width="2.2" stroke-linejoin="round"$guiones/>""")
        end

        # Leyenda
        for (i, e) in enumerate(etiquetas)
            c = colores[mod1(i, length(colores))]
            x0 = ml + 10 + (i - 1) * 150
            push!(partes, """<rect x="$x0" y="8" width="12" height="4" rx="2" fill="$c"/><text x="$(x0 + 18)" y="14" font-size="11.5" fill="currentColor">$(escapar_html(e))</text>""")
        end

        HTML("""<div class="viz"><svg viewBox="0 0 $ancho $alto" role="img" style="width:100%;max-width:720px;height:auto;display:block;font-family:var(--font-body)">$(join(partes, "\n"))</svg></div>""")
    end

    # Pinta una matriz de enteros (tiempos de escape) como imagen en color
    function lienzo(M, maxit)
        alto, ancho = size(M)
        datos = join(vec(permutedims(M)), ",")
        HTML("""<div class="viz"><canvas width="$ancho" height="$alto" style="width:100%;max-width:720px;height:auto;display:block;border-radius:14px;border:1px solid rgba(128,128,128,.35)"></canvas><script>
            const cv = currentScript.parentElement.querySelector('canvas');
            const W = $ancho, H = $alto, MAXIT = $maxit;
            const d = [$datos];
            function hsl(h, s, l) {
              const a = s * Math.min(l, 1 - l);
              const f = n => { const k = (n + h / 30) % 12; return l - a * Math.max(-1, Math.min(k - 3, 9 - k, 1)); };
              return [f(0) * 255, f(8) * 255, f(4) * 255];
            }
            const ctx = cv.getContext('2d');
            const img = ctx.createImageData(W, H);
            for (let i = 0; i < d.length; i++) {
              let rgb = [8, 8, 20];
              if (d[i] < MAXIT) {
                const t = Math.sqrt(d[i] / MAXIT);
                rgb = hsl((250 + 330 * t) % 360, 0.85, 0.2 + 0.5 * t);
              }
              img.data[4 * i] = rgb[0];
              img.data[4 * i + 1] = rgb[1];
              img.data[4 * i + 2] = rgb[2];
              img.data[4 * i + 3] = 255;
            }
            ctx.putImageData(img, 0, 0);
        </script></div>""")
    end

    # Evalúa una función f sobre una cuadrícula de números complejos
    function mapa(f, centro, ancho_region; ancho = 240, alto = 160)
        alto_region = ancho_region * alto / ancho
        xs = range(real(centro) - ancho_region / 2, real(centro) + ancho_region / 2, length = ancho)
        ys = range(imag(centro) + alto_region / 2, imag(centro) - alto_region / 2, length = alto)
        [f(complex(x, y)) for y in ys, x in xs]
    end
end;

# ╔═╡ d0000001-0000-5000-8000-000000000007
md"""
$(kicker("00 · Antes de empezar"))

# Cómo funciona este cuaderno

Este cuaderno va **de menos a más**. Empieza despacio, con ideas pequeñas explicadas con calma, y cada nivel sube un peldaño hasta que dibujes fractales y simules una partícula cuántica. Si algo no queda claro a la primera, es normal: lo importante reaparece más adelante desde otro ángulo, y ahí se acomoda.

Todas las secciones siguen el mismo camino:

| Paso | Qué haces |
|:-----|:----------|
| **① La idea** | Una explicación corta, con una analogía |
| **② Pruébalo** | Ejecutas o mueves algo y *ves* qué pasa; a veces primero predices |
| **③ Comprueba** | Una pregunta rápida con retroalimentación inmediata |
| **📌 En resumen** | Tres líneas para fijar lo importante |

Además encontrarás dos recuadros desplegables: **⚠️ Ojo** (un error típico de principiantes) y **🔭 Zoom** (la matemática de fondo, opcional, para cuando quieras ir más profundo).

!!! info "Cómo usar los controles"
    Los deslizadores, cuadros de texto y casillas son **interactivos**: muévelos y las celdas que dependen de ellos se recalculan solas. Esa es la gran idea de Pluto.

!!! tip "Atajos útiles de Pluto"
    `Shift + Enter` ejecuta la celda · `Ctrl + S` ejecuta todas las celdas pendientes · el panel **Documentación en vivo** (abajo a la derecha) explica cualquier función: escribe `?println` en una celda.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000008
md"""
$(kicker("01 · Primeros pasos"))

# Tu primer programa

Dificultad $(nivel(1))

!!! tip "🎯 Al terminar sabrás"
    - Ejecutar una celda de código.
    - Mostrar un mensaje con `println`.
    - Ver cómo Pluto recalcula todo lo que depende de un dato.

**① La idea.** Un programa es una lista de instrucciones **exactas**, como una receta de cocina. La dificultad nunca está en entender una instrucción sola, sino en ser preciso: el computador hace *exactamente* lo que escribes, ni más ni menos. `println` (de *print line*, "imprimir línea") significa *muestra esto en pantalla*.

**② Pruébalo.** Ejecuta la celda siguiente con `Shift + Enter`.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000009
println("¡Hola, mundo!")

# ╔═╡ d0000001-0000-5000-8000-000000000010
md"""
!!! tip "Tu turno"
    Cambia el mensaje dentro de las comillas y vuelve a ejecutar la celda.

Ahora algo **interactivo**: escribe tu nombre y la celda de abajo reacciona sola. Cuando cambia un dato, todo lo que depende de él se recalcula.

Tu nombre: $(@bind nombre campo_texto("mundo"))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000011
md"### ¡Hola, **$(nombre)**! 👋"

# ╔═╡ d0000001-0000-5000-8000-000000000012
md"""
**③ Comprueba.** ¿Qué hace `println("Hola")`?

$(@bind q_print opciones([
    "Guarda la palabra Hola dentro de una variable",
    "Muestra Hola en pantalla y salta de línea",
    "Calcula el resultado de Hola",
]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000013
corregir(q_print,
    "Muestra Hola en pantalla y salta de línea",
    "`println` solo **muestra** un valor; no lo guarda ni lo calcula.",
    "Piensa en el nombre: *print line* = imprimir una línea. ¿Guarda algo o solo muestra?")

# ╔═╡ d0000001-0000-5000-8000-000000000014
md"""
!!! info "📌 En resumen"
    - Un programa es una lista de instrucciones exactas.
    - `println("texto")` muestra texto en pantalla.
    - En Pluto, al cambiar un dato se actualizan las celdas que dependen de él.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000015
md"""
$(kicker("02 · Números"))

# Operaciones básicas

Dificultad $(nivel(1))

!!! tip "🎯 Al terminar sabrás"
    - Usar los operadores aritméticos de Julia.
    - Distinguir la división `/` de la división entera `÷`.
    - Combinar texto y cálculos.

**① La idea.** Julia es, entre otras cosas, una calculadora muy potente. Los símbolos son los que ya conoces, con un par de detalles:

| Operador | Significado | Ejemplo |
|:--------:|:------------|:--------|
| `+` | suma | `2 + 3` |
| `-` | resta | `10 - 4` |
| `*` | multiplicación | `6 * 7` |
| `/` | división (siempre da decimal) | `20 / 5` |
| `^` | potencia | `2^8` |
| `÷` | división entera (se escribe `\div` y Tab) | `7 ÷ 2` |
| `%` | residuo (lo que sobra) | `7 % 2` |
"""

# ╔═╡ d0000001-0000-5000-8000-000000000016
begin
    suma = 2 + 3
    resta = 10 - 4
    producto = 6 * 7
    division = 20 / 5
    potencia = 2^8
    (; suma, resta, producto, division, potencia)
end

# ╔═╡ d0000001-0000-5000-8000-000000000017
md"""
!!! hint "🤔 Predice antes de ejecutar"
    Reparte 7 galletas entre 2 personas. ¿Qué crees que dará `7 / 2`? ¿Y `7 ÷ 2`? ¿Cuántas galletas sobran con `7 % 2`?

$(plegable("Ver respuesta", md"`7 / 2` da `3.5` · `7 ÷ 2` da `3` (galletas enteras por persona) · `7 % 2` da `1` (la galleta que sobra)."))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000018
(; dividir = 7 / 2, entera = 7 ÷ 2, sobra = 7 % 2)

# ╔═╡ d0000001-0000-5000-8000-000000000019
md"""
$(plegable("⚠️ Ojo: un error muy común", md"Creer que `20 / 5` da `4`. En Julia da `4.0`: el operador `/` **siempre** devuelve un decimal, aunque el resultado sea exacto. Si quieres un entero, usa `÷`."))

Para mezclar texto y cálculos, `println` acepta varios valores, o puedes **interpolar** un cálculo dentro del texto escribiendo un signo de dólar seguido de paréntesis.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000020
begin
    println("La suma de 2 + 3 es ", 2 + 3)
    println("La potencia de 2^8 es ", 2^8)
    println("Con interpolación: 7 * 6 = $(7 * 6)")
end

# ╔═╡ d0000001-0000-5000-8000-000000000021
md"""
**③ Comprueba.** ¿Qué resultado da `7 / 2` en Julia?

$(@bind q_div opciones(["3", "3.5", "3.0"]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000022
corregir(q_div, "3.5",
    "Exacto: `/` es la división \"normal\" y siempre devuelve un decimal.",
    "`3` sería la división entera (`÷`). Recuerda que `/` conserva los decimales.")

# ╔═╡ d0000001-0000-5000-8000-000000000023
md"""
!!! info "📌 En resumen"
    - `+ - * / ^` funcionan como esperas; `/` siempre da decimal.
    - `÷` da la parte entera y `%` el residuo.
    - Dentro de un texto, un cálculo se inserta con interpolación.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000024
md"""
$(kicker("03 · Variables"))

# Variables y nombres

Dificultad $(nivel(1))

!!! tip "🎯 Al terminar sabrás"
    - Crear variables con `=`.
    - Explicar qué es realmente una variable.
    - Evitar la confusión entre copiar y apuntar.

**① La idea.** Una variable **no es una caja** que guarda cosas; es una **etiqueta** pegada a un valor. Así lo define el [manual oficial](https://docs.julialang.org/en/v1/manual/variables/): *un nombre asociado (enlazado) a un valor*. Puedes pegar varias etiquetas al mismo objeto, o mover una etiqueta a otro.

!!! info "Reglas y convenciones"
    Los nombres distinguen mayúsculas de minúsculas, aceptan Unicode (`δ`, `α`) y solo están prohibidas las palabras reservadas, como `else` o `try`. La convención es escribir los nombres en minúsculas, por ejemplo `velocidad_luz`. Para números grandes puedes usar guiones bajos: `1_000_000`.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000025
begin
    edad = 25
    precio = 69.2
    poblacion = 1_000_000
    velocidad_luz = 299_792_458     # m/s
    δ = 0.00001                     # escribe \delta y pulsa Tab
    (; edad, precio, poblacion, velocidad_luz, δ)
end

# ╔═╡ d0000001-0000-5000-8000-000000000026
md"""
**③ Comprueba.** Observa este código (no hace falta ejecutarlo).

```julia
x = 5
y = x
x = 10
```

¿Cuánto vale `y` al final?

$(@bind q_var opciones(["5", "10", "15"]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000027
corregir(q_var, "5",
    "`y = x` pegó la etiqueta `y` al valor `5`. Después, `x = 10` movió solo la etiqueta `x`; `y` no se enteró.",
    "Imagina etiquetas: `y` quedó pegada al valor que tenía `x` en ese momento. ¿Cambia `y` cuando mueves la etiqueta `x`?")

# ╔═╡ d0000001-0000-5000-8000-000000000028
md"""
### Cuando dos etiquetas apuntan al mismo objeto

Con valores simples como números esto no se nota. Con un **arreglo** (una lista de valores) sí. Predice antes de ejecutar: si cambias `original[1]`, ¿cambia también `alias[1]`?
"""

# ╔═╡ d0000001-0000-5000-8000-000000000029
begin
    original = [1, 2, 3]
    alias = original        # dos nombres, un solo arreglo
    original[1] = 42
    (; original, alias)
end

# ╔═╡ d0000001-0000-5000-8000-000000000030
md"""
$(plegable("⚠️ Ojo: un error muy común", md"Asignar `alias = original` **no copia** el arreglo: ambos nombres apuntan al mismo objeto, y el manual oficial lo muestra con este mismo ejemplo. Si necesitas una copia independiente, usa `copy(original)`."))

!!! info "📌 En resumen"
    - Una variable es una etiqueta pegada a un valor.
    - `=` asigna; volver a asignar mueve la etiqueta.
    - Con arreglos, dos nombres pueden apuntar al mismo objeto; usa `copy` para separarlos.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000031
md"""
$(kicker("04 · Tipos de datos"))

# ¿Qué tipo de dato estoy usando?

Dificultad $(nivel(2))

!!! tip "🎯 Al terminar sabrás"
    - Usar `typeof` para averiguar el tipo de un valor.
    - Distinguir `Int64`, `Float64` y `String`.
    - Entender que los tipos forman una jerarquía.

**① La idea.** En una hoja de cálculo no es lo mismo una celda de texto que una de número. Julia también distingue **tipos**, y eso le permite hacer cada operación bien y rápido. Predice el tipo de cada valor y luego ejecuta:

$(plegable("Ver pistas", md"`2` es un entero · `69.2` tiene punto decimal · lo que va entre comillas es texto · `true` es un valor lógico · `'j'` (comillas simples) es un solo carácter · `1 // 2` es una fracción exacta."))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000032
[valor => typeof(valor) for valor in (2, 69.2, "Hello, World!", true, 'j', 1 // 2)]

# ╔═╡ d0000001-0000-5000-8000-000000000033
md"""
$(plegable("⚠️ Ojo: un error muy común", md"`2` y `2.0` **no son el mismo tipo** (`Int64` y `Float64`). Y un número escrito entre comillas es **texto**, no un número: por eso sumarle un entero produce un error (lo verás en la sección 05)."))

### Los tipos forman un árbol

Todo tipo tiene un "padre", como un árbol genealógico. `Int64` es un `Signed`, que es un `Integer`, que es un `Real`, que es un `Number`, y todo desciende de `Any`. Esa jerarquía es la base del *multiple dispatch* que usarás en el nivel 5.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000034
begin
    function ancestros(T)
        cadena = Any[T]
        while T !== Any
            T = supertype(T)
            push!(cadena, T)
        end
        cadena
    end

    (; cadena = ancestros(Int64), subtipos_de_Integer = subtypes(Integer))
end

# ╔═╡ d0000001-0000-5000-8000-000000000035
md"""
**③ Comprueba.** ¿Qué devuelve `typeof(3 / 1)`?

$(@bind q_tipo opciones(["Int64", "Float64", "String"]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000036
corregir(q_tipo, "Float64",
    "Aunque `3 / 1` valga exactamente 3, el operador `/` siempre devuelve un decimal (`Float64`).",
    "Recuerda la sección de operaciones: ¿qué tipo de resultado devuelve siempre el operador `/`?")

# ╔═╡ d0000001-0000-5000-8000-000000000037
md"""
!!! info "📌 En resumen"
    - `typeof(x)` te dice el tipo de `x`.
    - `Int64` (enteros), `Float64` (decimales) y `String` (texto) son los más comunes.
    - Los tipos forman una jerarquía: `Int64` → `Signed` → `Integer` → `Real` → `Number` → `Any`.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000038
md"""
$(kicker("05 · Errores"))

# Leer errores sin miedo

Dificultad $(nivel(2))

!!! tip "🎯 Al terminar sabrás"
    - Reconocer las partes de un mensaje de error.
    - Usar el mensaje para encontrar qué falló.

**① La idea.** Un error no es un fracaso, es el computador diciéndote *"no entendí esta instrucción, y por esto"*. Todo mensaje tiene la misma estructura:

| Parte | Qué te dice |
|:------|:------------|
| **Nombre del error** (`MethodError`, `DomainError`, `BoundsError`) | La categoría del problema |
| **Descripción** | Qué intentaste hacer y por qué no se pudo |
| **Pista** (a veces) | Sugerencias, como "Closest candidates are..." |

Aquí provocamos tres errores a propósito, pero capturados para que el cuaderno no se detenga. Lee cada uno.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000039
begin
    function capturar(f)
        try
            f()
            "sin error"
        catch e
            sprint(showerror, e)
        end
    end

    errores = [
        "\"hola\" + 1"  => capturar(() -> "hola" + 1),
        "sqrt(-1)"      => capturar(() -> sqrt(-1)),
        "[1, 2, 3][5]"  => capturar(() -> [1, 2, 3][5]),
    ]

    Text(join(["▸ $codigo\n$mensaje" for (codigo, mensaje) in errores], "\n\n"))
end

# ╔═╡ d0000001-0000-5000-8000-000000000040
md"""
**③ Comprueba.** Ves `MethodError: no method matching +(::String, ::Int64)`. ¿Qué significa?

$(@bind q_error opciones([
    "Julia no sabe sumar un texto con un entero",
    "Falta instalar un paquete",
    "La computadora se quedó sin memoria",
]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000041
corregir(q_error, "Julia no sabe sumar un texto con un entero",
    "Lee los tipos entre paréntesis: `::String` y `::Int64`. Para esa combinación no existe método de `+`.",
    "Fíjate en lo que aparece después de `+(`: son los **tipos** de los argumentos que no se pudieron combinar.")

# ╔═╡ d0000001-0000-5000-8000-000000000042
md"""
!!! info "📌 En resumen"
    - Empieza siempre por la **primera línea** del error: nombre y descripción.
    - Los tipos que aparecen como `::String` o `::Int64` suelen darte la clave.
    - Un error es información, no un castigo.

!!! tip "🚀 Subimos de nivel"
    Ya tienes las herramientas básicas. A partir de aquí dejamos las palabras y empezamos a **dibujar**.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000043
md"""
$(kicker("06 · Funciones"))

# Funciones: máquinas que transforman

Dificultad $(nivel(2))

!!! tip "🎯 Al terminar sabrás"
    - Definir tus propias funciones, en forma larga y corta.
    - Dibujar una onda y controlarla con parámetros.
    - Entender el punto `.` que aplica una función a toda una lista.

**① La idea.** Una función es una **máquina**: entra un valor, sale otro. Tú ya la conoces de matemáticas: `f(x) = x²` toma un número y devuelve su cuadrado. En Julia se escribe casi igual, y hay dos formas equivalentes:
"""

# ╔═╡ d0000001-0000-5000-8000-000000000044
begin
    # Forma larga
    function cuadrado(x)
        return x^2
    end

    # Forma corta (ideal para una sola expresión)
    hipotenusa(cateto1, cateto2) = sqrt(cateto1^2 + cateto2^2)

    # Las funciones se pueden componer con ∘ (escribe \circ y Tab)
    (; cuadrado_de_9 = cuadrado(9),
       hipotenusa_3_4 = hipotenusa(3, 4),
       compuesta = (sqrt ∘ abs)(-16))
end

# ╔═╡ d0000001-0000-5000-8000-000000000045
md"""
**② Pruébalo.** Una **onda** es una función que se repite. La más famosa es `A·sen(ω·x + φ)`: la **amplitud** `A` dice qué tan alta es, la **frecuencia** `ω` qué tan apretada, y la **fase** `φ` cuánto se desplaza. Mueve los tres controles y mira la gráfica.

**Amplitud A** = $(@bind amplitud deslizador(0.5:0.5:3, default = 1.0))

**Frecuencia ω** = $(@bind frecuencia deslizador(1:8, default = 2))

**Fase φ** = $(@bind fase deslizador(0.0:0.25:6.0, default = 0.0))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000046
begin
    onda_seno(x, A, ω, φ) = A * sin(ω * x + φ)

    xs_onda = range(0, 2π, length = 300)
    ys_onda = onda_seno.(xs_onda, Float64(amplitud), Float64(frecuencia), Float64(fase))

    grafica(xs_onda, [ys_onda]; etiquetas = ["A·sen(ω·x + φ)"])
end

# ╔═╡ d0000001-0000-5000-8000-000000000047
md"""
Mira la línea que dice `onda_seno.(xs_onda, ...)`. El **punto** después del nombre le dice a Julia *aplica esto a cada elemento*. El arreglo `xs_onda` tiene 300 puntos y se evaluó 300 veces con una sola instrucción. A esto se le llama *broadcasting*.

!!! hint "🤔 Predice antes de mover"
    ¿Qué le pasa a la onda si subes la frecuencia de 2 a 6? ¿Y si cambias la fase en `1.5`?

$(plegable("Ver respuesta", md"Más frecuencia: la onda se **comprime** y entran más ciclos en el mismo intervalo. Más fase: toda la onda se **desplaza** hacia la izquierda sin cambiar de forma."))

$(plegable("⚠️ Ojo: un error muy común", md"Olvidar el punto. `sin(xs_onda)` da un error, porque `sin` espera un número y no una lista. Con el punto, `sin.(xs_onda)` aplica `sin` a cada elemento."))

**③ Comprueba.** ¿Qué hace el punto en `onda_seno.(xs_onda, ...)`?

$(@bind q_punto opciones([
    "Aplica la función a cada elemento del arreglo",
    "Multiplica el resultado por un punto decimal",
    "No hace nada, es solo decoración",
]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000048
corregir(q_punto, "Aplica la función a cada elemento del arreglo",
    "Es el *broadcasting*: una instrucción, muchas evaluaciones. Sirve con cualquier función, incluso las tuyas.",
    "Piensa en lo que hizo la gráfica: una sola línea evaluó la función en 300 puntos distintos.")

# ╔═╡ d0000001-0000-5000-8000-000000000049
md"""
!!! info "📌 En resumen"
    - Una función recibe argumentos y devuelve un resultado: `f(x) = ...`.
    - `f.(lista)` aplica `f` a cada elemento de una lista.
    - Una onda `A·sen(ω·x + φ)` se controla con tres parámetros.

$(plegable("🔭 Zoom: funciones como morfismos", md"`(sqrt ∘ abs)(-16)` es la composición `sqrt(abs(-16))`. En Julia, `∘` compone funciones igual que en matemáticas: asociativa y con identidad (`identity`). Los tipos de entrada y salida desempeñan el papel de objetos y las funciones el de flechas. No es una categoría en sentido estricto, pero el vocabulario ayuda y lo retomaremos en el nivel 5."))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000050
md"""
$(kicker("07 · Arreglos y ondas"))

# Arreglos y series de Fourier

Dificultad $(nivel(3))

!!! tip "🎯 Al terminar sabrás"
    - Crear arreglos y operar con ellos.
    - Usar comprensiones para construir listas.
    - Aproximar una onda cuadrada sumando senos.

**① La idea.** Un **arreglo** es una lista ordenada de valores. En ciencia casi todo es un arreglo: una señal de audio, una imagen, el estado de un sistema. Julia está hecha para trabajar con ellos de manera natural, y los índices empiezan en **1**.

**② Pruébalo.**
"""

# ╔═╡ d0000001-0000-5000-8000-000000000051
begin
    lista = [1, 2, 3, 4, 5]
    (; lista,
       cuadrados = lista .^ 2,
       con_comprension = [i^2 for i in lista],
       suma_de_todos = sum(lista),
       primero = lista[1],
       ultimo = lista[end])
end

# ╔═╡ d0000001-0000-5000-8000-000000000052
md"""
Ahora una idea de Joseph Fourier que cambió la ciencia: **casi cualquier onda se arma sumando senos**. Una onda cuadrada (un interruptor que salta entre -1 y 1) se aproxima con

`(4/π) · [ sen(x) + sen(3x)/3 + sen(5x)/5 + ... ]`

Sube el número de armónicos y mira cómo los senos suaves van construyendo esquinas.

**Armónicos** = $(@bind n_armonicos deslizador(1:40, default = 3))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000053
begin
    suma_parcial(x, N) = (4 / π) * sum(sin((2k - 1) * x) / (2k - 1) for k in 1:N)
    xs_f = range(-π, π, length = 600)
    cuadrada = sign.(sin.(xs_f))
end;

# ╔═╡ d0000001-0000-5000-8000-000000000054
begin
    aprox = suma_parcial.(xs_f, Int(n_armonicos))
    grafica(xs_f, [aprox, cuadrada];
        etiquetas = ["suma de $(Int(n_armonicos)) armónicos", "onda cuadrada ideal"],
        punteadas = [2])
end

# ╔═╡ d0000001-0000-5000-8000-000000000055
(; armonicos = Int(n_armonicos),
   maximo_alcanzado = round(maximum(aprox), digits = 4),
   valor_ideal = 1.0)

# ╔═╡ d0000001-0000-5000-8000-000000000056
md"""
**③ Comprueba.** Con 40 armónicos, ¿qué pasa con el "pico" que sobresale justo al lado del salto?

$(@bind q_gibbs opciones([
    "Desaparece por completo",
    "No desaparece: se queda en torno a 1.18, aunque se hace más estrecho",
    "Crece sin límite",
]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000057
corregir(q_gibbs, "No desaparece: se queda en torno a 1.18, aunque se hace más estrecho",
    "Es el **fenómeno de Gibbs**: la altura del sobrepico converge a un valor fijo, cerca del 9 % del salto, aunque su ancho tienda a cero.",
    "Mira el número `maximo_alcanzado` mientras subes los armónicos. ¿Sigue cambiando o se estabiliza?")

# ╔═╡ d0000001-0000-5000-8000-000000000058
md"""
!!! info "📌 En resumen"
    - Un arreglo es una lista ordenada; `a[1]` es el primer elemento y `a[end]` el último.
    - `[f(i) for i in lista]` construye una lista nueva (comprensión).
    - Sumando senos se aproximan ondas complejas, pero en los saltos aparece el fenómeno de Gibbs.

$(plegable("🔭 Zoom: convergencia de Fourier", md"La serie de Fourier de la onda cuadrada converge puntualmente a la función en los puntos de continuidad y a la media de los límites laterales en el salto, pero **no converge uniformemente**: por eso el sobrepico no se aplana. Su valor límite es `(2/π)·Si(π) ≈ 1.1790`, donde `Si` es la integral seno. En norma `L²`, en cambio, la convergencia sí ocurre."))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000059
md"""
$(kicker("08 · Fractales"))

# Bucles, condicionales y el conjunto de Mandelbrot

Dificultad $(nivel(3))

!!! tip "🎯 Al terminar sabrás"
    - Escribir un bucle `for` con un `if` para decidir cuándo parar.
    - Usar números complejos (`im`) en Julia.
    - Explicar con tus palabras cómo se genera un fractal.

**① La idea.** Un **bucle** repite una receta. Un **condicional** decide cuándo parar. Con solo esas dos piezas, y números complejos, se dibuja uno de los objetos más famosos de la matemática.

Los complejos ya vienen en Julia: `1 + 2im` es 1 + 2i. La receta es: parte de `z = 0` y repite `z ← z² + c`. Si `|z|` se dispara hacia el infinito, el punto `c` **escapa**; si se queda acotado, **no escapa**. Pintamos cada punto `c` del plano según *cuántos pasos tarda en escapar*.

**② Pruébalo.** Esta función cuenta los pasos. Fíjate en la estructura: un `for`, un `if` y un `return` que sale en cuanto se cumple la condición.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000060
begin
    function tiempo_escape(z0, c, maxit)
        z = z0
        for n in 1:maxit
            z = z^2 + c
            if abs2(z) > 4          # |z| > 2: ya no hay vuelta atrás
                return n
            end
        end
        return maxit                # nunca escapó en maxit pasos
    end

    function trayectoria(c, pasos)
        z = 0.0 + 0.0im
        camino = ComplexF64[]
        for _ in 1:pasos
            z = z^2 + c
            push!(camino, z)
        end
        camino
    end

    lugares = [
        ("Vista completa", -0.5 + 0.0im),
        ("Valle de los caballitos de mar", -0.7436 + 0.1318im),
        ("Espiral", -0.7269 + 0.1889im),
        ("Mini-Mandelbrot", -1.7499 + 0.0im),
    ]

    # |z| paso a paso: un c que no escapa se estabiliza; otro se dispara
    (; no_escapa = round.(abs.(trayectoria(-0.4 + 0.0im, 8)), digits = 3),
       escapa = round.(abs.(trayectoria(0.5 + 0.5im, 5)), digits = 3))
end

# ╔═╡ d0000001-0000-5000-8000-000000000061
md"""
Fíjate en la diferencia: con `c = -0.4` el valor de `|z|` se estabiliza; con `c = 0.5 + 0.5im` se dispara. Ahora lo hacemos para **38 400 puntos a la vez**. Los píxeles negros son los que **no** escaparon. Pruébalo: sube el zoom y verás aparecer detalles nuevos sin fin.

**Iteraciones máximas** = $(@bind iteraciones deslizador(10:10:300, default = 60))

**Zoom** (cada paso duplica el aumento) = $(@bind zoom deslizador(0:1:10, default = 0))

**Lugar** = $(@bind centro_sel selector(first.(lugares)))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000062
begin
    its_m = Int(iteraciones)
    ancho_m = 3.0 / 2.0^Int(zoom)
    M_mandel = mapa(c -> tiempo_escape(0.0im, c, its_m), Dict(lugares)[centro_sel], ancho_m)
    lienzo(M_mandel, its_m)
end

# ╔═╡ d0000001-0000-5000-8000-000000000063
md"""
$(plegable("⚠️ Ojo: un error muy común", md"Hacer mucho zoom y ver una mancha plana. No es un fallo: con más zoom hacen falta **más iteraciones** para distinguir los puntos cercanos a la frontera. Sube las iteraciones máximas y el detalle reaparece."))

### El hermano del Mandelbrot: los conjuntos de Julia

Aquí usamos la **misma** función `tiempo_escape`, pero cambiamos quién es la variable: ahora `c` es fijo (lo eliges tú) y cada píxel es el punto de partida `z₀`. Cada valor de `c` genera una figura distinta. Mueve los controles con suavidad.

**Parte real de c** = $(@bind cr deslizador(-1.0:0.01:1.0, default = -0.8))

**Parte imaginaria de c** = $(@bind ci deslizador(-1.0:0.01:1.0, default = 0.16))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000064
let
    c = Float64(cr) + Float64(ci) * im
    M = mapa(z -> tiempo_escape(z, c, 80), 0.0 + 0.0im, 3.2; ancho = 240, alto = 150)
    lienzo(M, 80)
end

# ╔═╡ d0000001-0000-5000-8000-000000000065
md"""
!!! hint "🧩 Reto"
    Busca valores de `c` donde la figura sea una sola pieza conexa y otros donde se rompa en "polvo". Compara con el Mandelbrot: ¿en qué zona del Mandelbrot está cada uno de esos `c`?

**③ Comprueba.** En la imagen del Mandelbrot, ¿qué significa un píxel negro?

$(@bind q_escape opciones([
    "Que ese punto no escapó durante las iteraciones que probamos",
    "Que el cálculo dio error",
    "Que escapó muy rápido",
]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000066
corregir(q_escape, "Que ese punto no escapó durante las iteraciones que probamos",
    "Los negros son los puntos que parecen pertenecer al conjunto. Solo parecen: con más iteraciones, alguno podría terminar escapando.",
    "`tiempo_escape` devuelve `maxit` cuando el punto nunca superó `|z| > 2`, y ese caso se pinta de negro.")

# ╔═╡ d0000001-0000-5000-8000-000000000067
md"""
!!! info "📌 En resumen"
    - Un `for` repite y un `if` con `return` permite parar antes.
    - Con la regla `z ← z² + c` y números complejos se genera el Mandelbrot.
    - La misma función con otro rol para `c` y `z₀` produce los conjuntos de Julia.

$(plegable("🔭 Zoom: qué es exactamente el conjunto de Mandelbrot", md"Es el conjunto de los `c ∈ ℂ` para los que la órbita de `0` bajo `z ↦ z² + c` permanece acotada. Si `|z_n| > 2` en algún paso, la órbita escapa a infinito; por eso ese criterio basta. El conjunto es **conexo** (Douady y Hubbard), y `c` pertenece a él si y solo si el conjunto de Julia `J_c` es conexo; si no, `J_c` es un polvo de Cantor. Su frontera tiene dimensión de Hausdorff 2 (Shishikura). Los píxeles negros son una aproximación: solo sabemos que no escaparon en `maxit` pasos."))

!!! tip "🚀 Subimos de nivel"
    Ya dominas bucles, arreglos y complejos. Ahora los usamos para algo más profundo: **la física cuántica**.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000068
md"""
$(kicker("09 · Función de onda"))

# Una partícula en una caja

Dificultad $(nivel(4))

!!! tip "🎯 Al terminar sabrás"
    - Calcular y graficar una función de onda cuántica con arreglos.
    - Explicar qué mide `|ψ|²` y por qué algunos estados no se mueven.
    - Ver cómo una mezcla de estados hace que la partícula "chapotee".

**① La idea.** Imagina una partícula atrapada en una caja de ancho 1 (el pozo infinito). Su estado es una función `ψ(x)` con valores complejos; no es una probabilidad sino una **amplitud**. La probabilidad de encontrarla cerca de `x` es `|ψ(x)|²`.

Los estados de energía definida son `ψₙ(x) = √2·sen(nπx)` con energía `Eₙ = n²π²/2` (en unidades con ħ = m = 1). Con el tiempo, cada estado solo gira su fase: `ψₙ(x, t) = ψₙ(x)·e^(-iEₙt)`.

Si la partícula está en **un solo** estado, `|ψ|²` no cambia nunca (estado estacionario). Pero si **mezclas dos** estados, sus fases giran a ritmos distintos y la partícula se mueve de lado a lado. Vamos a verlo.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000069
begin
    xs_caja = range(0, 1, length = 400)
    dx_caja = step(xs_caja)

    ψ_n(n, x) = sqrt(2) * sin(n * π * x)
    E_n(n) = (n * π)^2 / 2

    # Estado mezcla de ψ_n1 y ψ_n2 en el tiempo t, normalizado numéricamente
    function estado(n1, n2, m, t)
        ψ = [ψ_n(n1, x) * cis(-E_n(n1) * t) + m * ψ_n(n2, x) * cis(-E_n(n2) * t) for x in xs_caja]
        ρ = abs2.(ψ)
        norma = sum(ρ) * dx_caja
        ψ ./ sqrt(norma), ρ ./ norma
    end
end;

# ╔═╡ d0000001-0000-5000-8000-000000000070
md"""
**② Pruébalo.** Empieza con `n₁ = 1`, `n₂ = 2` y mezcla `1.0`. Avanza el tiempo despacio. Luego prueba mezcla `0.0` y compara.

**Estado n₁** = $(@bind n1 deslizador(1:5, default = 1))

**Estado n₂** = $(@bind n2 deslizador(1:5, default = 2))

**Mezcla** (peso de n₂) = $(@bind mezcla deslizador(0.0:0.1:2.0, default = 1.0))

**Tiempo t** = $(@bind tiempo deslizador(0.0:0.01:0.5, default = 0.0))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000071
begin
    psi_t, rho_t = estado(Int(n1), Int(n2), Float64(mezcla), Float64(tiempo))
    grafica(xs_caja, [real.(psi_t), imag.(psi_t), rho_t];
        etiquetas = ["Re ψ", "Im ψ", "|ψ|²  probabilidad"],
        relleno = 3)
end

# ╔═╡ d0000001-0000-5000-8000-000000000072
(; posicion_media = round(sum(xs_caja .* rho_t) * dx_caja, digits = 3),
   energia_n1 = round(E_n(Int(n1)), digits = 2),
   energia_n2 = round(E_n(Int(n2)), digits = 2))

# ╔═╡ d0000001-0000-5000-8000-000000000073
md"""
!!! hint "🤔 Qué observar"
    La `posicion_media` oscila cuando mezclas dos estados distintos y se queda fija cuando no. Prueba `n₁ = 1`, `n₂ = 3` y compara la rapidez del vaivén con la de `n₁ = 1`, `n₂ = 2`.

**③ Comprueba.** Si pones la mezcla en `0.0` (un solo estado) y avanzas el tiempo, ¿qué le pasa a `|ψ|²`?

$(@bind q_cuantica opciones([
    "No cambia: es un estado estacionario",
    "Oscila de un lado a otro de la caja",
    "Se vuelve cero",
]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000074
corregir(q_cuantica, "No cambia: es un estado estacionario",
    "Un solo estado solo gira su fase, y la fase global desaparece al elevar al cuadrado. Para que algo se mueva hacen falta **al menos dos** energías.",
    "Con un solo estado, `ψ` solo se multiplica por `e^(-iEt)`, que tiene módulo 1. ¿Qué le pasa a `|ψ|²`?")

# ╔═╡ d0000001-0000-5000-8000-000000000075
md"""
!!! info "📌 En resumen"
    - `|ψ(x)|²` es la densidad de probabilidad de encontrar la partícula cerca de `x`.
    - Un estado de energía definida es estacionario; solo gira su fase.
    - Mezclar dos energías produce movimiento a la frecuencia `(E₂ - E₁)`.

$(plegable("🔭 Zoom: el espacio de Hilbert", md"`ψ` vive en `L²[0,1]`, y `{ψₙ}` es una base ortonormal (las series de senos de Fourier). Un estado general es `Σ cₙψₙe^(-iEₙt)`. La evolución es unitaria porque `e^(-iHt)` lo es, y `⟨x⟩(t)` oscila con las frecuencias de Bohr `(Eₘ - Eₙ)`. Esto es lo que ves en el vaivén de `posicion_media`."))

!!! tip "🚀 Último nivel"
    Hasta aquí usamos funciones y arreglos. Ahora aprenderás a crear tus **propios tipos** y a dejar que Julia elija el método correcto por ti.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000076
md"""
$(kicker("10 · Tus propios tipos"))

# Tipos propios y multiple dispatch

Dificultad $(nivel(5))

!!! tip "🎯 Al terminar sabrás"
    - Definir un `struct` y funciones asociadas.
    - Escribir varios métodos de una misma función según los tipos.
    - Extender operadores como `+` a tus propios objetos.

**① La idea.** El verbo *abrir* significa cosas distintas según lo que abras: una puerta, un archivo, una cuenta. Tú no cambias de verbo; el contexto decide. En Julia, una misma función puede tener varios **métodos**, y Julia elige el correcto según los tipos de **todos** los argumentos. A esto se le llama *multiple dispatch*, y es el corazón del lenguaje.

**② Pruébalo.** Definimos dos tipos: una `Onda` y una `Superposicion` de ondas. La función `evaluar` tiene un método para cada uno, y le enseñamos a `+` a sumar ondas.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000077
begin
    struct Onda
        amplitud::Float64
        frecuencia::Float64
        fase::Float64
    end

    struct Superposicion
        ondas::Vector{Onda}
    end

    evaluar(o::Onda, x) = o.amplitud * sin(o.frecuencia * x + o.fase)
    evaluar(s::Superposicion, x) = sum(evaluar(o, x) for o in s.ondas)
    evaluar(f::Function, x) = f(x)

    Base.:+(a::Onda, b::Onda) = Superposicion([a, b])
    Base.:+(s::Superposicion, o::Onda) = Superposicion([s.ondas; o])

    (; evaluar_onda = evaluar(Onda(1.0, 1.0, 0.0), π / 2),
       evaluar_funcion = evaluar(cos, 0.0))
end

# ╔═╡ d0000001-0000-5000-8000-000000000078
begin
    o1 = Onda(1.0, 3.0, 0.0)
    o2 = Onda(0.6, 7.0, 1.0)
    o3 = Onda(0.3, 12.0, 2.0)
    suma_ondas = o1 + o2 + o3        # Onda + Onda -> Superposicion; luego + Onda

    xs_t = range(0, 2π, length = 400)
    grafica(xs_t,
        [[evaluar(o1, x) for x in xs_t],
         [evaluar(o2, x) for x in xs_t],
         [evaluar(o3, x) for x in xs_t],
         [evaluar(suma_ondas, x) for x in xs_t]];
        etiquetas = ["onda 1", "onda 2", "onda 3", "suma de las 3"],
        punteadas = [1, 2, 3])
end

# ╔═╡ d0000001-0000-5000-8000-000000000079
md"""
Julia guarda todos los métodos de `evaluar`. Esta tabla muestra qué tipos acepta cada uno:
"""

# ╔═╡ d0000001-0000-5000-8000-000000000080
methods(evaluar)

# ╔═╡ d0000001-0000-5000-8000-000000000081
md"""
**③ Comprueba.** En multiple dispatch, ¿qué decide qué método se ejecuta?

$(@bind q_dispatch opciones([
    "El nombre del archivo donde está la función",
    "Los tipos de los argumentos con que la llamas",
    "El orden en que escribiste los métodos",
]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000082
corregir(q_dispatch, "Los tipos de los argumentos con que la llamas",
    "Por eso `evaluar(o1, x)` y `evaluar(suma_ondas, x)` ejecutan métodos distintos, aunque la función se llame igual.",
    "Mira la tabla de métodos: cada línea lista los tipos que acepta. ¿Qué cambia entre `evaluar(::Onda, ...)` y `evaluar(::Superposicion, ...)`?")

# ╔═╡ d0000001-0000-5000-8000-000000000083
md"""
!!! info "📌 En resumen"
    - `struct` define un tipo nuevo con campos.
    - Una función puede tener muchos métodos; Julia elige según los **tipos** de los argumentos.
    - Puedes extender operadores como `+` a tus propios tipos.

$(plegable("🔭 Zoom: dispatch como definición por casos", md"El dispatch múltiple es definir una función por casos sobre un **producto** de tipos: `evaluar : (Onda × ℝ) ⊔ (Superposicion × ℝ) → ℝ`. Por eso encaja tan bien con el álgebra: cada método dice cómo actúa la operación en un caso, y Julia compone todo en una única función."))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000084
md"""
$(kicker("11 · Ejercicios"))

# Practica con autocorrección

Reemplaza cada `missing` por tu respuesta y la celda de abajo te dirá si vas bien. Si te atascas, usa las ayudas **en orden**: primero la pista y, solo si hace falta, la solución. Los ejercicios suben de nivel.

### Ejercicio 1: el área de un círculo ★☆☆☆☆

Calcula el área de un círculo de radio 5 con la fórmula `π * radio^2` y guárdala en `area_circulo`. (`π` se escribe `\pi` y Tab.)
"""

# ╔═╡ d0000001-0000-5000-8000-000000000085
area_circulo = missing

# ╔═╡ d0000001-0000-5000-8000-000000000086
if ismissing(area_circulo)
    pendiente()
elseif area_circulo isa Real && area_circulo ≈ π * 5^2
    correcto()
else
    incorrecto("Usa la fórmula `π * 5^2`. Revisa que no falte el cuadrado del radio.")
end

# ╔═╡ d0000001-0000-5000-8000-000000000087
md"""
$(plegable("Pista", md"Escribe `π * 5^2`. Recuerda que `^` es la potencia."))
$(plegable("Solución", md"`area_circulo = π * 5^2`"))

### Ejercicio 2: tu propia función ★★☆☆☆

Define una función `triple(x)` que devuelva el triple de `x`. Debe funcionar con enteros y con decimales.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000088
triple(x) = missing

# ╔═╡ d0000001-0000-5000-8000-000000000089
if ismissing(triple(1))
    pendiente()
elseif triple(4) == 12 && triple(2.5) == 7.5
    correcto()
else
    incorrecto("Prueba `triple(4)`: debería dar `12`. Y `triple(2.5)` debería dar `7.5`.")
end

# ╔═╡ d0000001-0000-5000-8000-000000000090
md"""
$(plegable("Pista", md"Usa la forma corta de una función: `nombre(x) = ...`. ¿Qué operación te da el triple?"))
$(plegable("Solución", md"`triple(x) = 3 * x`"))

### Ejercicio 3: tu propio detector de escape ★★★★☆

Escribe `escapa(c, maxit)`: parte de `z = 0`, itera `z = z^2 + c` y devuelve el número de pasos hasta que `abs2(z) > 4`, o `maxit` si nunca ocurre. Como referencia, `escapa(1.0 + 0.0im, 50)` debe dar `3`.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000091
escapa(c, maxit) = missing

# ╔═╡ d0000001-0000-5000-8000-000000000092
if ismissing(escapa(0.0 + 0.0im, 50))
    pendiente()
elseif escapa(0.0 + 0.0im, 50) == 50 && escapa(1.0 + 0.0im, 50) == 3 && escapa(2.0 + 0.0im, 50) == 2
    correcto()
else
    incorrecto("Comprueba tres casos: `escapa(0.0 + 0.0im, 50)` debe dar `50` (nunca escapa), `escapa(1.0 + 0.0im, 50)` debe dar `3` y `escapa(2.0 + 0.0im, 50)` debe dar `2`.")
end

# ╔═╡ d0000001-0000-5000-8000-000000000093
HTML(
    plegable("Pista", md"Usa un `for n in 1:maxit`. Dentro: actualiza `z`, y si `abs2(z) > 4` haz `return n`. Al final del bucle, `return maxit`.").content *
    plegable("Solución", Markdown.parse("""
```julia
function escapa(c, maxit)
    z = 0.0 + 0.0im
    for n in 1:maxit
        z = z^2 + c
        if abs2(z) > 4
            return n
        end
    end
    return maxit
end
```
""")).content
)

# ╔═╡ d0000001-0000-5000-8000-000000000094
md"""
$(kicker("12 · Autoevaluación"))

# ¿Qué ya sabes hacer?

Marca con sinceridad lo que podrías hacer **sin mirar el cuaderno**. Lo que dejes sin marcar es lo que conviene repasar.

$(@bind progreso casillas([
    "Mostrar mensajes con println y crear variables",
    "Distinguir / de ÷ y reconocer Int64, Float64 y String con typeof",
    "Leer un mensaje de error sin asustarme",
    "Definir una función y aplicarla a una lista con el punto",
    "Explicar cómo se aproxima una onda sumando senos",
    "Describir con mis palabras cómo se genera el conjunto de Mandelbrot",
    "Escribir un bucle con for e if para un cálculo iterativo",
    "Explicar qué mide |ψ|² y por qué un estado estacionario no se mueve",
    "Definir un struct y métodos que se eligen según el tipo",
]))
"""

# ╔═╡ d0000001-0000-5000-8000-000000000095
let
    n_listos = length(progreso)
    n_total = 9
    mensaje = n_listos == n_total ?
        "¡Completaste el recorrido! Ya puedes pasar a gráficos con paquetes y a tus propias simulaciones." :
        "Repasa las secciones que dejaste sin marcar y vuelve cuando quieras."
    HTML("""
    <progress value="$n_listos" max="$n_total" style="width:100%; height:14px; accent-color:#389826"></progress>
    <p><b>$n_listos de $n_total</b> · $mensaje</p>
    """)
end

# ╔═╡ d0000001-0000-5000-8000-000000000096
md"""
$(kicker("13 · Referencia"))

# Glosario rápido

| Término | Significado |
|:--------|:------------|
| **Celda** | Bloque de código o texto que se ejecuta por separado en Pluto |
| **Variable** | Nombre (etiqueta) asociado a un valor |
| **Tipo** | La "clase" de un dato: número entero, decimal, texto... |
| **Función** | Código con nombre que recibe argumentos y devuelve un resultado |
| **Método** | Una versión de una función para ciertos tipos de argumentos |
| **Multiple dispatch** | Elegir el método según los tipos de todos los argumentos |
| **Argumento** | Dato que le pasas a una función |
| **Arreglo** | Lista ordenada de valores; el primer índice es 1 |
| **Broadcasting** | Aplicar una función a cada elemento de un arreglo con el punto `.` |
| **Comprensión** | Forma compacta de construir un arreglo con un bucle |
| **Número complejo** | Número `a + bi`; en Julia se escribe `a + b*im` |
| **Iteración** | Repetir un paso una y otra vez, usando el resultado anterior |
| **Conjunto de Mandelbrot** | Los `c` para los que `z ← z² + c` no escapa al infinito partiendo de `0` |
| **Función de onda** | Función `ψ(x)` cuyo módulo al cuadrado da la densidad de probabilidad |
| **Struct** | Tipo propio con campos con nombre |
| **Reactivo** | Que se actualiza solo cuando cambian los datos de los que depende |

# Recursos oficiales

**Manual de Julia (lo esencial):**
- [Variables](https://docs.julialang.org/en/v1/manual/variables/)
- [Enteros y números de punto flotante](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/)
- [Números complejos](https://docs.julialang.org/en/v1/manual/complex-and-rational-numbers/)
- [Funciones](https://docs.julialang.org/en/v1/manual/functions/)
- [Control de flujo](https://docs.julialang.org/en/v1/manual/control-flow/)
- [Tipos](https://docs.julialang.org/en/v1/manual/types/)
- [Métodos y multiple dispatch](https://docs.julialang.org/en/v1/manual/methods/)

**Ecosistema:**
- [Julia, sitio oficial](https://julialang.org/) y [aprendizaje](https://julialang.org/learning/)
- [Pluto.jl](https://plutojl.org/) y sus [cuadernos destacados](https://featured.plutojl.org/)
- [JuliaHub](https://juliahub.com/)

**Próximo paso:** gráficos con paquetes (Plots, Makie) y manejo de paquetes. Ya sabrás por qué conviene tenerlos.
"""

# ╔═╡ d0000001-0000-5000-8000-000000000097
html"""
<div class="footer">
  <strong>NeoCats</strong> · Introducción interactiva a Julia
  <br><span style="font-size:.85rem">Aprender programación, una celda a la vez · Hecho con Pluto.jl</span>
</div>
"""

# ╔═╡ Cell order:
# ╟─d0000001-0000-5000-8000-000000000001
# ╟─d0000001-0000-5000-8000-000000000002
# ╟─d0000001-0000-5000-8000-000000000003
# ╟─d0000001-0000-5000-8000-000000000004
# ╟─d0000001-0000-5000-8000-000000000005
# ╟─d0000001-0000-5000-8000-000000000006
# ╟─d0000001-0000-5000-8000-000000000007
# ╟─d0000001-0000-5000-8000-000000000008
# ╠═d0000001-0000-5000-8000-000000000009
# ╟─d0000001-0000-5000-8000-000000000010
# ╟─d0000001-0000-5000-8000-000000000011
# ╟─d0000001-0000-5000-8000-000000000012
# ╟─d0000001-0000-5000-8000-000000000013
# ╟─d0000001-0000-5000-8000-000000000014
# ╟─d0000001-0000-5000-8000-000000000015
# ╠═d0000001-0000-5000-8000-000000000016
# ╟─d0000001-0000-5000-8000-000000000017
# ╠═d0000001-0000-5000-8000-000000000018
# ╟─d0000001-0000-5000-8000-000000000019
# ╠═d0000001-0000-5000-8000-000000000020
# ╟─d0000001-0000-5000-8000-000000000021
# ╟─d0000001-0000-5000-8000-000000000022
# ╟─d0000001-0000-5000-8000-000000000023
# ╟─d0000001-0000-5000-8000-000000000024
# ╠═d0000001-0000-5000-8000-000000000025
# ╟─d0000001-0000-5000-8000-000000000026
# ╟─d0000001-0000-5000-8000-000000000027
# ╟─d0000001-0000-5000-8000-000000000028
# ╠═d0000001-0000-5000-8000-000000000029
# ╟─d0000001-0000-5000-8000-000000000030
# ╟─d0000001-0000-5000-8000-000000000031
# ╠═d0000001-0000-5000-8000-000000000032
# ╟─d0000001-0000-5000-8000-000000000033
# ╠═d0000001-0000-5000-8000-000000000034
# ╟─d0000001-0000-5000-8000-000000000035
# ╟─d0000001-0000-5000-8000-000000000036
# ╟─d0000001-0000-5000-8000-000000000037
# ╟─d0000001-0000-5000-8000-000000000038
# ╠═d0000001-0000-5000-8000-000000000039
# ╟─d0000001-0000-5000-8000-000000000040
# ╟─d0000001-0000-5000-8000-000000000041
# ╟─d0000001-0000-5000-8000-000000000042
# ╟─d0000001-0000-5000-8000-000000000043
# ╠═d0000001-0000-5000-8000-000000000044
# ╟─d0000001-0000-5000-8000-000000000045
# ╠═d0000001-0000-5000-8000-000000000046
# ╟─d0000001-0000-5000-8000-000000000047
# ╟─d0000001-0000-5000-8000-000000000048
# ╟─d0000001-0000-5000-8000-000000000049
# ╟─d0000001-0000-5000-8000-000000000050
# ╠═d0000001-0000-5000-8000-000000000051
# ╟─d0000001-0000-5000-8000-000000000052
# ╟─d0000001-0000-5000-8000-000000000053
# ╠═d0000001-0000-5000-8000-000000000054
# ╠═d0000001-0000-5000-8000-000000000055
# ╟─d0000001-0000-5000-8000-000000000056
# ╟─d0000001-0000-5000-8000-000000000057
# ╟─d0000001-0000-5000-8000-000000000058
# ╟─d0000001-0000-5000-8000-000000000059
# ╠═d0000001-0000-5000-8000-000000000060
# ╟─d0000001-0000-5000-8000-000000000061
# ╠═d0000001-0000-5000-8000-000000000062
# ╟─d0000001-0000-5000-8000-000000000063
# ╠═d0000001-0000-5000-8000-000000000064
# ╟─d0000001-0000-5000-8000-000000000065
# ╟─d0000001-0000-5000-8000-000000000066
# ╟─d0000001-0000-5000-8000-000000000067
# ╟─d0000001-0000-5000-8000-000000000068
# ╟─d0000001-0000-5000-8000-000000000069
# ╟─d0000001-0000-5000-8000-000000000070
# ╠═d0000001-0000-5000-8000-000000000071
# ╠═d0000001-0000-5000-8000-000000000072
# ╟─d0000001-0000-5000-8000-000000000073
# ╟─d0000001-0000-5000-8000-000000000074
# ╟─d0000001-0000-5000-8000-000000000075
# ╟─d0000001-0000-5000-8000-000000000076
# ╠═d0000001-0000-5000-8000-000000000077
# ╠═d0000001-0000-5000-8000-000000000078
# ╟─d0000001-0000-5000-8000-000000000079
# ╠═d0000001-0000-5000-8000-000000000080
# ╟─d0000001-0000-5000-8000-000000000081
# ╟─d0000001-0000-5000-8000-000000000082
# ╟─d0000001-0000-5000-8000-000000000083
# ╟─d0000001-0000-5000-8000-000000000084
# ╠═d0000001-0000-5000-8000-000000000085
# ╟─d0000001-0000-5000-8000-000000000086
# ╟─d0000001-0000-5000-8000-000000000087
# ╠═d0000001-0000-5000-8000-000000000088
# ╟─d0000001-0000-5000-8000-000000000089
# ╟─d0000001-0000-5000-8000-000000000090
# ╠═d0000001-0000-5000-8000-000000000091
# ╟─d0000001-0000-5000-8000-000000000092
# ╟─d0000001-0000-5000-8000-000000000093
# ╟─d0000001-0000-5000-8000-000000000094
# ╟─d0000001-0000-5000-8000-000000000095
# ╟─d0000001-0000-5000-8000-000000000096
# ╟─d0000001-0000-5000-8000-000000000097
