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

# ╔═╡ 587d6004-6339-5fd2-8c6a-593753f791e6
using PlutoUI

# ╔═╡ e7f0e7da-36cf-5780-b0fe-59ae6e1e5e4a
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

@media (max-width: 700px) {
    .hero { padding: 2rem 1.4rem; }
    pluto-output h1 { font-size: 1.9rem; }
}
</style>

<div class="hero">
  <div class="eyebrow">NeoCats · Cuaderno interactivo</div>
  <div class="julia-dots"><span></span><span></span><span></span><span></span></div>
  <h1>Julia desde cero</h1>
  <p>Aprende programación experimentando. Escribe código, ejecuta instrucciones y descubre los tipos de datos de un lenguaje diseñado para la computación científica.</p>
</div>
"""

# ╔═╡ 24e1e176-e21b-512a-8efb-30e247a99de1
html"""
<p style="margin:.4rem 0 0; font-weight:700; font-family:var(--font-body)">Tu ruta de aprendizaje · aprox. 1 hora</p>
<div class="cards">
  <div class="card red"><b>1 · Empezar</b>Mensajes, operaciones y variables.<br><small style="opacity:.7">≈ 15 min</small></div>
  <div class="card green"><b>2 · Entender</b>Tipos de datos, errores y por qué Julia es distinto.<br><small style="opacity:.7">≈ 15 min</small></div>
  <div class="card purple"><b>3 · Programar</b>Funciones, condicionales y bucles.<br><small style="opacity:.7">≈ 15 min</small></div>
  <div class="card blue"><b>4 · Practicar</b>Laboratorio, ejercicios y autoevaluación.<br><small style="opacity:.7">≈ 15 min</small></div>
</div>
"""

# ╔═╡ 7cadf5ee-4e0b-5c2e-873c-920a05dcc2f2
TableOfContents(title = "Contenido", aside = true)

# ╔═╡ b5e2329d-160d-508a-9381-0d4493be590e
begin
    function kicker(texto)
        num, etiqueta = split(texto, " · "; limit = 2)
        HTML("<span class=\"kicker\"><span class=\"kicker-num\">$num</span>$etiqueta</span>")
    end

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

# ╔═╡ 7643af80-dca8-5387-9190-1582621bb73f
md"""
$(kicker("00 · Antes de empezar"))

# Cómo estudiar este cuaderno

No necesitas saber programar. Necesitas curiosidad y ganas de experimentar. **Todas las secciones siguen el mismo camino**, siempre en este orden:

| Paso | Qué haces |
|:-----|:----------|
| **① La idea** | Lees una explicación corta, con una analogía |
| **② Pruébalo** | Ejecutas el código; a veces primero **predices** qué pasará |
| **③ Comprueba** | Respondes una pregunta rápida y recibes retroalimentación |
| **📌 En resumen** | Repasas lo importante en tres líneas |

Cuando veas **⚠️ Ojo**, es un error típico de principiantes: ábrelo si quieres evitarlo.

!!! info "Regla de oro"
    Equivocarte es parte del método. Un error en Julia no rompe nada: te explica qué pasó. Más adelante dedicaremos una sección completa a leerlos sin miedo.

!!! tip "Atajos útiles de Pluto"
    `Shift + Enter` ejecuta la celda · `Ctrl + S` ejecuta todas las celdas pendientes · el panel **Documentación en vivo** (abajo a la derecha) explica cualquier función: escribe `?println` en una celda.
"""

# ╔═╡ 60a63814-83b0-5041-9920-41b686892ac3
md"""
$(kicker("01 · Primeros pasos"))

# Tu primer programa

!!! tip "🎯 Al terminar sabrás"
    - Ejecutar una celda de código.
    - Mostrar un mensaje con `println`.
    - Modificar el código y ver el resultado al instante.

**① La idea.** un programa es una lista de instrucciones para el computador, como una receta de cocina. `println` (de *print line*, "imprimir línea") es la instrucción *muestra esto en pantalla*.

**② Pruébalo.** Ejecuta la celda siguiente con `Shift + Enter`.
"""

# ╔═╡ b8299810-2e68-5bbc-b601-0ec20d0b6fa4
println("¡Hola, mundo!")

# ╔═╡ f7565e0f-0f48-5b95-80e5-d5a77dd6774a
md"""
!!! tip "Tu turno"
    Cambia el mensaje dentro de las comillas y vuelve a ejecutar la celda.

Ahora algo **interactivo**: escribe tu nombre y la celda de abajo reacciona sola. Esa es la gran idea de Pluto: cuando cambia un dato, todo lo que depende de él se recalcula.

Tu nombre: $(@bind nombre TextField(default = "mundo"))
"""

# ╔═╡ af8c87a7-b6a4-5d5b-9827-b71678bf9a14
md"### ¡Hola, **$(nombre)**! 👋"

# ╔═╡ b53c27b3-e2d1-5b0c-b0a8-baf8fa8b1a73
md"""
**③ Comprueba.** ¿qué hace `println("Hola")`?

$(@bind q_print Radio([
    "Guarda la palabra Hola dentro de una variable",
    "Muestra Hola en pantalla y salta de línea",
    "Calcula el resultado de Hola",
]))
"""

# ╔═╡ aa47e838-7cee-5512-9c92-ecd8d9729e99
corregir(q_print,
    "Muestra Hola en pantalla y salta de línea",
    "`println` solo **muestra** un valor; no lo guarda ni lo calcula.",
    "Piensa en el nombre: *print line* = imprimir una línea. ¿Guarda algo o solo muestra?")

# ╔═╡ 3562d3cf-62bc-5e00-8489-02af1cf6a5f5
md"""
!!! info "📌 En resumen"
    - Un programa es una lista de instrucciones.
    - `println("texto")` muestra texto en pantalla.
    - En Pluto, al cambiar un dato se actualizan las celdas que dependen de él.
"""

# ╔═╡ 94145ffa-604b-5efb-9dc1-883cad451383
md"""
$(kicker("02 · Números"))

# Operaciones básicas

!!! tip "🎯 Al terminar sabrás"
    - Usar los operadores aritméticos de Julia.
    - Distinguir la división `/` de la división entera `÷`.
    - Combinar texto y cálculos con interpolación.

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

# ╔═╡ ea33082a-fbff-5b3c-abbc-e1c377fec7cc
begin
    suma = 2 + 3
    resta = 10 - 4
    producto = 6 * 7
    division = 20 / 5
    potencia = 2^8
    (; suma, resta, producto, division, potencia)
end

# ╔═╡ dba93151-8cb2-5453-9843-d35cb39bb17b
md"""
!!! hint "🤔 Predice antes de ejecutar"
    Reparte 7 galletas entre 2 personas. ¿Qué crees que dará `7 / 2`? ¿Y `7 ÷ 2`? ¿Cuántas galletas sobran con `7 % 2`?

$(plegable("Ver respuesta", md"`7 / 2` da `3.5` · `7 ÷ 2` da `3` (galletas enteras por persona) · `7 % 2` da `1` (la galleta que sobra)."))
"""

# ╔═╡ 58859913-ec90-575c-9eb0-03e1795a2efc
(; dividir = 7 / 2, entera = 7 ÷ 2, sobra = 7 % 2)

# ╔═╡ ae70e42c-cd3b-5c58-8761-68e20feed419
plegable("⚠️ Ojo: un error muy común", md"Creer que `20 / 5` da `4`. En Julia da `4.0`: el operador `/` **siempre** devuelve un decimal, aunque el resultado sea exacto. Si quieres un entero, usa `÷`.")

# ╔═╡ 2c15e65a-9c85-524d-a5a6-45719b68ab8f
md"""
### Mostrar mensajes con cálculos

Las cadenas de texto van entre comillas dobles. Puedes combinar texto y cálculos con `println`, o **interpolar** un cálculo dentro del texto escribiendo un signo de dólar seguido de paréntesis.
"""

# ╔═╡ 2837038d-94a7-5881-8f13-243480c3a57f
begin
    println("La suma de 2 + 3 es ", 2 + 3)
    println("La potencia de 2^8 es ", 2^8)
    println("Con interpolación: 7 * 6 = $(7 * 6)")
end

# ╔═╡ 409db08a-2289-5729-a1b2-201e552f400f
md"""
**③ Comprueba.** ¿qué resultado da `7 / 2` en Julia?

$(@bind q_div Radio(["3", "3.5", "3.0"]))
"""

# ╔═╡ f5162cbe-a684-5fa2-a14a-705d3d60689a
corregir(q_div, "3.5",
    "Exacto: `/` es la división \"normal\" y siempre devuelve un decimal.",
    "`3` sería la división entera (`÷`). Recuerda que `/` conserva los decimales.")

# ╔═╡ 3829a7ae-2729-58f0-a93a-b95a6a0e5746
md"""
!!! info "📌 En resumen"
    - `+ - * / ^` funcionan como esperas; `/` siempre da decimal.
    - `÷` da la parte entera y `%` el residuo.
    - Dentro de un texto, un cálculo se inserta con interpolación.
"""

# ╔═╡ 1888f291-7b93-5987-9759-01bf2da6b37f
md"""
$(kicker("03 · Variables"))

# Variables y nombres

!!! tip "🎯 Al terminar sabrás"
    - Crear variables con `=`.
    - Explicar qué es realmente una variable.
    - Evitar la confusión entre copiar y apuntar.

**① La idea.** una variable **no es una caja** que guarda cosas; es una **etiqueta** pegada a un valor. Así lo define el [manual oficial](https://docs.julialang.org/en/v1/manual/variables/): *un nombre asociado (enlazado) a un valor*. Puedes pegar varias etiquetas al mismo objeto, o mover una etiqueta a otro.

!!! info "Reglas y convenciones"
    Los nombres distinguen mayúsculas de minúsculas, aceptan Unicode (`δ`, `α`) y solo están prohibidas las palabras reservadas, como `else` o `try`. La convención es escribir los nombres en minúsculas, por ejemplo `velocidad_luz`. Para números grandes puedes usar guiones bajos: `1_000_000`.
"""

# ╔═╡ 835706bc-afb9-52fb-800e-aed49f01ec0b
begin
    edad = 25
    precio = 69.2
    poblacion = 1_000_000
    velocidad_luz = 299_792_458     # m/s
    δ = 0.00001                     # escribe \delta y pulsa Tab
    (; edad, precio, poblacion, velocidad_luz, δ)
end

# ╔═╡ 1eed76d0-a68f-558c-b924-c4bc914341fe
md"""
**③ Comprueba.** observa este código (no hace falta ejecutarlo).

```julia
x = 5
y = x
x = 10
```

¿Cuánto vale `y` al final?

$(@bind q_var Radio(["5", "10", "15"]))
"""

# ╔═╡ 5cabd81d-5dfc-5ef5-a136-220e06791a33
corregir(q_var, "5",
    "`y = x` pegó la etiqueta `y` al valor `5`. Después, `x = 10` movió solo la etiqueta `x`; `y` no se enteró.",
    "Imagina etiquetas: `y` quedó pegada al valor que tenía `x` en ese momento. ¿Cambia `y` cuando mueves la etiqueta `x`?")

# ╔═╡ c7633dd6-c0b3-59ca-8a12-144537ac258c
md"""
### Cuando dos etiquetas apuntan al mismo objeto

Con valores simples como números esto no se nota. Con un **arreglo** (una lista de valores) sí. Predice antes de ejecutar: si cambias `original[1]`, ¿cambia también `alias[1]`?
"""

# ╔═╡ 17da2c96-c7ca-5dcd-82ea-3e81922bec2d
begin
    original = [1, 2, 3]
    alias = original        # dos nombres, un solo arreglo
    original[1] = 42
    (; original, alias)
end

# ╔═╡ 7389b706-bbdd-5efd-bc9e-9a4ad01e880b
plegable("⚠️ Ojo: un error muy común", md"Asignar `alias = original` **no copia** el arreglo: ambos nombres apuntan al mismo objeto, y el manual oficial lo muestra con este mismo ejemplo. Si necesitas una copia independiente, usa `copy(original)`.")

# ╔═╡ 51c69ac1-587e-53e9-86a2-e043a686d88e
md"""
!!! info "📌 En resumen"
    - Una variable es una etiqueta pegada a un valor.
    - `=` asigna; volver a asignar mueve la etiqueta.
    - Con arreglos, dos nombres pueden apuntar al mismo objeto; usa `copy` para separarlos.
"""

# ╔═╡ b0110001-b108-5e89-99bd-9d14e02002f4
md"""
$(kicker("04 · Tipos de datos"))

# ¿Qué tipo de dato estoy usando?

!!! tip "🎯 Al terminar sabrás"
    - Usar `typeof` para averiguar el tipo de un valor.
    - Distinguir `Int64`, `Float64` y `String`.
    - Entender que los tipos forman una jerarquía.

**① La idea.** en una hoja de cálculo no es lo mismo una celda de texto que una de número. Julia también distingue **tipos**, y eso le permite hacer cada operación bien y rápido. Predice el tipo de cada valor y luego ejecuta:

$(plegable("Ver pistas", md"`2` es un entero · `69.2` tiene punto decimal · lo que va entre comillas es texto · `true` es un valor lógico · `'j'` (comillas simples) es un solo carácter · `1 // 2` es una fracción exacta."))
"""

# ╔═╡ 20be8be1-e097-5d11-b725-73aca16ea3a1
[valor => typeof(valor) for valor in (2, 69.2, "Hello, World!", true, 'j', 1 // 2)]

# ╔═╡ 9e0c600f-901c-513a-a583-bd5e0c428bd7
plegable("⚠️ Ojo: un error muy común", md"`2` y `2.0` **no son el mismo tipo** (`Int64` y `Float64`). Y un número escrito entre comillas es **texto**, no un número: por eso sumarle un entero produce un error (lo verás en la sección 05).")

# ╔═╡ 266439b7-3d74-5daf-b795-4624e293fbf0
md"""
### Los tipos forman un árbol

Todo tipo tiene un "padre", como un árbol genealógico. `Int64` es un `Signed`, que es un `Integer`, que es un `Real`, que es un `Number`, y todo desciende de `Any`. Esa jerarquía es la base del *multiple dispatch* que verás más adelante.
"""

# ╔═╡ 2ecbe4cb-28d3-5885-9572-2db7fbdbe1f1
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

# ╔═╡ 21a97c4b-89da-5617-ad50-7f4c0b60f978
md"""
**③ Comprueba.** ¿qué devuelve `typeof(3 / 1)`?

$(@bind q_tipo Radio(["Int64", "Float64", "String"]))
"""

# ╔═╡ d92807ee-be04-52bc-af11-e209b0829ec2
corregir(q_tipo, "Float64",
    "Aunque `3 / 1` valga exactamente 3, el operador `/` siempre devuelve un decimal (`Float64`).",
    "Recuerda la sección de operaciones: ¿qué tipo de resultado devuelve siempre el operador `/`?")

# ╔═╡ 77352daf-5f47-5aeb-b885-369c1c1dd974
md"""
!!! info "📌 En resumen"
    - `typeof(x)` te dice el tipo de `x`.
    - `Int64` (enteros), `Float64` (decimales) y `String` (texto) son los más comunes.
    - Los tipos forman una jerarquía: `Int64` → `Signed` → `Integer` → `Real` → `Number` → `Any`.
"""

# ╔═╡ a50811ad-b346-5c45-a21f-2341c312827e
md"""
$(kicker("05 · Errores"))

# Leer errores sin miedo

!!! tip "🎯 Al terminar sabrás"
    - Reconocer las partes de un mensaje de error.
    - Usar el mensaje para encontrar qué falló.

**① La idea.** un error no es un fracaso, es el computador diciéndote *"no entendí esta instrucción, y por esto"*. Todo mensaje tiene la misma estructura:

| Parte | Qué te dice |
|:------|:------------|
| **Nombre del error** (`MethodError`, `DomainError`, `BoundsError`) | La categoría del problema |
| **Descripción** | Qué intentaste hacer y por qué no se pudo |
| **Pista** (a veces) | Sugerencias, como "Closest candidates are..." |

Aquí provocamos tres errores a propósito, pero capturados para que el cuaderno no se detenga. Lee cada uno.
"""

# ╔═╡ 0cd7a13b-c8b1-5d11-86ec-c18991ea11a3
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

# ╔═╡ 3d708ccb-ab98-5955-98fa-0197cc1569db
md"""
**③ Comprueba.** ves `MethodError: no method matching +(::String, ::Int64)`. ¿Qué significa?

$(@bind q_error Radio([
    "Julia no sabe sumar un texto con un entero",
    "Falta instalar un paquete",
    "La computadora se quedó sin memoria",
]))
"""

# ╔═╡ 587dc61e-245c-5d9d-b8be-b0fbcb901795
corregir(q_error, "Julia no sabe sumar un texto con un entero",
    "Lee los tipos entre paréntesis: `::String` y `::Int64`. Para esa combinación no existe método de `+`.",
    "Fíjate en lo que aparece después de `+(`: son los **tipos** de los argumentos que no se pudieron combinar.")

# ╔═╡ 0b25b513-f1d0-5b1e-8ea8-9d29057b1e95
md"""
!!! info "📌 En resumen"
    - Empieza siempre por la **primera línea** del error: nombre y descripción.
    - Los tipos que aparecen como `::String` o `::Int64` suelen darte la clave.
    - Un error es información, no un castigo.
"""

# ╔═╡ 614639aa-b65a-5b66-8cd4-989a6592ffe2
md"""
$(kicker("06 · Conoce Julia"))

# ¿Por qué Julia?

**① La idea.** Julia nació para que los científicos escribieran código fácil de leer **y** rápido, sin tener que reescribirlo en otro lenguaje para que funcione bien.
"""

# ╔═╡ 7340c7c8-d62b-5b96-b41b-0d935d75f95c
html"""
<div class="cards">
  <div class="card red"><b>Rendimiento</b>Compila el código justo a tiempo (JIT) para ejecutar cálculos con velocidad cercana a lenguajes como C.</div>
  <div class="card green"><b>Multiple dispatch</b>Elige qué método ejecutar según los tipos de <i>todos</i> los argumentos.</div>
  <div class="card purple"><b>Tipado dinámico</b>Puedes programar sin declarar el tipo de cada variable.</div>
  <div class="card blue"><b>Ecosistema</b>Paquetes para ciencia de datos, simulación, gráficos, IA y más.</div>
</div>
"""

# ╔═╡ 36851c36-d771-5578-bea7-d3db96a49ae6
md"""
Documentación: [Sitio oficial de Julia](https://julialang.org/) · [Manual del lenguaje](https://docs.julialang.org/en/v1/)

### Multiple dispatch en acción

**① La analogía.** el verbo *abrir* significa cosas distintas según lo que abras: una puerta, un archivo o una cuenta bancaria. Tú no cambias de verbo; el contexto decide qué acción se hace. En Julia, una misma función (`describir`) puede tener varios **métodos**, y Julia elige el correcto según el tipo de los argumentos.
"""

# ╔═╡ 61bf1812-e29f-5782-acfa-4bdb73a23b82
begin
    describir(x::Integer) = "Entero: $x"
    describir(x::AbstractFloat) = "Decimal: $x"
    describir(x::AbstractString) = "Texto: \"$x\""

    [describir(7), describir(3.14), describir("Julia")]
end

# ╔═╡ 5699d052-3f84-5300-a26c-7342b576ed22
methods(describir)

# ╔═╡ ed3c9868-5d78-53a5-b4ba-590f3248d1e4
md"""
**③ Comprueba.** en multiple dispatch, ¿qué decide qué método se ejecuta?

$(@bind q_dispatch Radio([
    "El nombre del archivo donde está la función",
    "Los tipos de los argumentos con que la llamas",
    "El orden en que escribiste los métodos",
]))
"""

# ╔═╡ e9c654a4-28c4-57c8-ab94-ea35dd829a61
corregir(q_dispatch, "Los tipos de los argumentos con que la llamas",
    "Por eso `describir(7)` y `describir(\"Julia\")` ejecutan métodos distintos, aunque la función se llame igual.",
    "Mira la celda anterior: ¿qué cambia entre `describir(7)` y `describir(3.14)`?")

# ╔═╡ d194f6c3-45af-5f67-8f1f-f61c247ab9ff
md"""
!!! info "📌 En resumen"
    - Julia combina facilidad de uso con velocidad.
    - Una función puede tener muchos métodos; Julia elige según los **tipos** de los argumentos.
"""

# ╔═╡ c96cffb8-32ee-5bb1-82a9-a4b1c9e1fcba
md"""
$(kicker("07 · Programar"))

# Funciones y control de flujo

!!! tip "🎯 Al terminar sabrás"
    - Definir tus propias funciones.
    - Tomar decisiones con `if` y repetir con comprensiones.
    - Aplicar una operación a toda una lista con el punto `.`.

**① La analogía.** una función es una **máquina**: le das ingredientes (argumentos), hace su trabajo y te devuelve un resultado. Un programa suele combinar *entrada → procesamiento → salida*, y el **control de flujo** es lo que decide el camino: ¿esto o aquello? ¿repetir cuántas veces?

Hay dos formas equivalentes de escribir una función:
"""

# ╔═╡ 0113c173-b11c-5c64-879e-6c9d5c8aa501
begin
    # Forma larga
    function cuadrado(x)
        return x^2
    end

    # Forma corta (ideal para una sola expresión)
    hipotenusa(cateto1, cateto2) = sqrt(cateto1^2 + cateto2^2)

    (; cuadrado_de_9 = cuadrado(9), hipotenusa_3_4 = hipotenusa(3, 4))
end

# ╔═╡ 7356fdb5-ee15-5290-8199-04f3bb408021
md"""
### Condicionales y bucles

Los bloques de Julia siempre terminan con `end`. Un **condicional** (`if`) elige un camino; una **comprensión** (`[... for ... in ...]`) repite una operación para cada elemento; y el punto `.` aplica una función **a cada elemento** de un arreglo (*broadcasting*).

!!! hint "🤔 Predice antes de ejecutar"
    ¿Qué clasificación dará `clasificar(-5)`? ¿Y `clasificar(0)`? ¿Cuántos elementos tendrá `cuadrados`?
"""

# ╔═╡ 3a4eeb0c-e89a-590c-bfef-9800f10925b2
begin
    function clasificar(n)
        if n < 0
            "negativo"
        elseif n == 0
            "cero"
        else
            "positivo"
        end
    end

    cuadrados = [i^2 for i in 1:10]          # comprensión de arreglos
    raices = sqrt.(cuadrados)                # broadcasting

    (; clasificacion = clasificar.([-5, 0, 7]), cuadrados, raices)
end

# ╔═╡ 14f40fae-9e56-521a-83c1-a9f10c362c68
plegable("⚠️ Ojo: un error muy común", md"Olvidar el `end` que cierra una función o un `if`. Si Pluto muestra un error de sintaxis, cuenta cuántos bloques abriste y cuántos `end` escribiste: deben coincidir.")

# ╔═╡ 45b0d443-4bee-5d00-94c3-4d52e231656f
md"""
**③ Comprueba.** con la función `clasificar` de arriba, ¿qué devuelve `clasificar(0)`?

$(@bind q_flujo Radio(["negativo", "cero", "positivo"]))
"""

# ╔═╡ 97197bc8-11c1-5a31-b8d0-59949b6263a7
corregir(q_flujo, "cero",
    "Se cumple `n == 0`, así que Julia entra en la segunda rama y devuelve \"cero\".",
    "Recorre la función de arriba hacia abajo: `0 < 0` es falso, ¿qué pasa con `0 == 0`?")

# ╔═╡ a7e6930f-f5bc-58f1-8483-fdd35800903c
md"""
!!! info "📌 En resumen"
    - Una función recibe argumentos y devuelve un resultado.
    - `if / elseif / else` elige un camino; `[f(i) for i in 1:n]` repite; `f.(lista)` aplica `f` a cada elemento.
    - Todo bloque abierto se cierra con `end`.
"""

# ╔═╡ 631b9fde-c48e-5b12-850c-d74a37edfc14
md"""
$(kicker("08 · Laboratorio"))

# Experimenta

Mueve los deslizadores y observa cómo se recalcula la celda de abajo. Piensa como científico: **cambia una cosa a la vez** y anota qué pasa.

**a** = $(@bind a Slider(1:20, default = 12, show_value = true))

**b** = $(@bind b Slider(1:20, default = 4, show_value = true))
"""

# ╔═╡ a4e1e17c-31bb-59c4-9876-92af3c5ebdc5
(; suma = a + b, producto = a * b, tipo_de_a = typeof(a))

# ╔═╡ 79430361-53a9-54ae-8fe8-8b2cd53173c2
md"""
!!! hint "🧩 Acertijo"
    ¿Existe algún par de números enteros positivos `a` y `b` para los que **la suma sea igual al producto**? Búscalo con los deslizadores. La celda siguiente te avisará cuando lo encuentres.
"""

# ╔═╡ 9f5a015c-d1c6-5d7f-b167-0a2a87457214
if a + b == a * b
    aviso("correct", "¡Lo encontraste!", "Con `a = $a` y `b = $b`, la suma y el producto valen $(a + b). ¿Habrá otro par? Prueba a cambiar solo uno de los dos.")
else
    aviso("info", "Sigue buscando", "Ahora la suma es $(a + b) y el producto es $(a * b). Fíjate en cuál crece más rápido al subir los números.")
end

# ╔═╡ de33c469-5b0b-5694-9eb9-7dc5e051d6cb
md"""
!!! warning "Reto extra"
    En la celda de los deslizadores cambia `Slider(1:20, ...)` de **a** por `Slider(0.5:0.5:20, default = 12.5, show_value = true)`. ¿Qué cambia en `tipo_de_a`? Conecta tu respuesta con la sección de tipos.
"""

# ╔═╡ 7cc5535b-a33d-5dcc-87b9-c3fe9817ce04
md"""
$(kicker("09 · Ejercicios"))

# Practica con autocorrección

Reemplaza cada `missing` por tu respuesta y la celda de abajo te dirá si vas bien. Si te atascas, usa las ayudas **en orden**: primero la pista y, solo si hace falta, la solución.

### Ejercicio 1: el área de un círculo

Calcula el área de un círculo de radio 5 con la fórmula `π * radio^2` y guárdala en `area_circulo`. (`π` se escribe `\pi` y Tab.)
"""

# ╔═╡ 3eeefcce-421d-5474-b0ad-05dcbb44644c
area_circulo = missing

# ╔═╡ 0d8e4403-4e2e-50ba-9d3e-b7c03a4948bc
if ismissing(area_circulo)
    pendiente()
elseif area_circulo isa Real && area_circulo ≈ π * 5^2
    correcto()
else
    incorrecto("Usa la fórmula `π * 5^2`. Revisa que no falte el cuadrado del radio.")
end

# ╔═╡ 5fbaf587-18b9-5b18-89a9-4395ad734964
md"""
$(plegable("Pista", md"Escribe `π * 5^2`. Recuerda que `^` es la potencia."))
$(plegable("Solución", md"`area_circulo = π * 5^2`"))
"""

# ╔═╡ 0c402e53-1326-5c51-9cdc-82de6a4f4005
md"""
### Ejercicio 2: ¿entero o decimal?

Escribe una operación con **solo números enteros** que dé como resultado un `Float64` y guárdala en `resultado_decimal`.
"""

# ╔═╡ e190f24b-1a79-5339-bea1-40ce569c6523
resultado_decimal = missing

# ╔═╡ 141701f6-f2c5-5809-ba05-729292e03fa5
if ismissing(resultado_decimal)
    pendiente()
elseif resultado_decimal isa Float64
    correcto()
else
    incorrecto("Ahora es de tipo `$(typeof(resultado_decimal))`. Recuerda qué tipo devuelve el operador `/`.")
end

# ╔═╡ 0d061b57-c3d6-57e4-84a6-ce7d3c522537
md"""
$(plegable("Pista", md"Repasa la sección de operaciones: hay un operador que siempre devuelve decimal."))
$(plegable("Solución", md"`resultado_decimal = 1 / 2` (el operador `/` siempre devuelve `Float64`)"))
"""

# ╔═╡ 48d7269e-ae86-5b3a-b0bc-d24b82f616f3
md"""
### Ejercicio 3: tu propia función

Define una función `triple(x)` que devuelva el triple de `x`. Debe funcionar con enteros y con decimales.
"""

# ╔═╡ 35dc0a91-7c99-54cc-b6d5-96123ee1aa64
triple(x) = missing

# ╔═╡ b42c0d96-fa0d-5c91-b418-7abba8e194f8
if ismissing(triple(1))
    pendiente()
elseif triple(4) == 12 && triple(2.5) == 7.5
    correcto()
else
    incorrecto("Prueba `triple(4)`: debería dar `12`. Y `triple(2.5)` debería dar `7.5`.")
end

# ╔═╡ 1929fd8f-7993-5928-8e22-f6c601602135
md"""
$(plegable("Pista", md"Usa la forma corta de una función: `nombre(x) = ...`. ¿Qué operación te da el triple?"))
$(plegable("Solución", md"`triple(x) = 3 * x`"))
"""

# ╔═╡ 43e59666-6b07-5e35-89c4-6e2f7583cdac
md"""
$(kicker("10 · Autoevaluación"))

# ¿Qué ya sabes hacer?

Marca con sinceridad lo que podrías hacer **sin mirar el cuaderno**. Lo que dejes sin marcar es lo que conviene repasar.

$(@bind progreso MultiCheckBox([
    "Ejecutar una celda y mostrar un mensaje con println",
    "Hacer operaciones y explicar la diferencia entre / y ÷",
    "Crear variables y explicar que son etiquetas, no cajas",
    "Reconocer Int64, Float64 y String con typeof",
    "Leer un mensaje de error sin asustarme",
    "Escribir una función sencilla",
    "Usar if y una comprensión de arreglos",
]))
"""

# ╔═╡ 1e3edcd4-42bc-5d88-a32a-f896d6a9dd7d
let
    n_listos = length(progreso)
    n_total = 7
    mensaje = n_listos == n_total ?
        "¡Completaste el recorrido! Ya puedes pasar a gráficos y paquetes." :
        "Repasa las secciones que dejaste sin marcar y vuelve cuando quieras."
    HTML("""
    <progress value="$n_listos" max="$n_total" style="width:100%; height:14px; accent-color:#389826"></progress>
    <p><b>$n_listos de $n_total</b> · $mensaje</p>
    """)
end

# ╔═╡ e07439f8-3e5d-5f6a-a9a7-6859e3fd73f7
md"""
$(kicker("11 · Referencia"))

# Glosario rápido

| Término | Significado |
|:--------|:------------|
| **Celda** | Bloque de código o texto que se ejecuta por separado en Pluto |
| **Variable** | Nombre (etiqueta) asociado a un valor |
| **Tipo** | La "clase" de un dato: número entero, decimal, texto... |
| **Función** | Código con nombre que recibe argumentos y devuelve un resultado |
| **Método** | Una versión de una función para ciertos tipos de argumentos |
| **Argumento** | Dato que le pasas a una función |
| **Interpolación** | Insertar un valor o cálculo dentro de un texto |
| **Broadcasting** | Aplicar una función a cada elemento de un arreglo con el punto `.` |
| **Comprensión** | Forma compacta de construir un arreglo con un bucle |
| **Reactivo** | Que se actualiza solo cuando cambian los datos de los que depende |

# Recursos oficiales

**Manual de Julia (lo esencial):**
- [Variables](https://docs.julialang.org/en/v1/manual/variables/)
- [Enteros y números de punto flotante](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/)
- [Funciones](https://docs.julialang.org/en/v1/manual/functions/)
- [Control de flujo](https://docs.julialang.org/en/v1/manual/control-flow/)
- [Tipos](https://docs.julialang.org/en/v1/manual/types/)
- [Guía de estilo](https://docs.julialang.org/en/v1/manual/style-guide/)

**Ecosistema:**
- [Julia — sitio oficial](https://julialang.org/) y [aprendizaje](https://julialang.org/learning/)
- [Pluto.jl](https://plutojl.org/) y sus [cuadernos destacados](https://featured.plutojl.org/)
- [JuliaHub](https://juliahub.com/)

**Próximo paso:** visualización de datos con gráficos y manejo de paquetes.
"""

# ╔═╡ 4ee8eeb0-bac6-5a07-9891-cec5b619f138
html"""
<div class="footer">
  <strong>NeoCats</strong> · Introducción interactiva a Julia
  <br><span style="font-size:.85rem">Aprender programación, una celda a la vez · Hecho con Pluto.jl</span>
</div>
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.83"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.7"
manifest_format = "2.0"
project_hash = "40c9f1cac973d64f8ca3ef3a09f769ff947e80f3"

[[deps.AbstractPlutoDingetjes]]
git-tree-sha1 = "e71ee7b4aa06b045259a7d6101e1cb45ad140bce"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.4.1"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
version = "1.11.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "61761f58648aa7217445f24f841839b78c712232"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.12.3"
weakdeps = ["StyledStrings"]

    [deps.ColorTypes.extensions]
    StyledStringsExt = "StyledStrings"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.3.1+2"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.7.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FixedPointNumbers]]
deps = ["Random", "Statistics"]
git-tree-sha1 = "59af96b98217c6ef4ae0dfe065ac7c20831d1a84"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.6"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "d1a86724f81bcd184a38fd284ce183ec067d71a0"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "1.0.0"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "0ee181ec08df7d7c911901ea38baf16f755114dc"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "1.0.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.JuliaSyntaxHighlighting]]
deps = ["StyledStrings"]
uuid = "ac6e5ff7-fb65-4e79-a425-ec3bc9c03011"
version = "1.12.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "OpenSSL_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.15.0+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "OpenSSL_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.3+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.12.0"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.MIMEs]]
git-tree-sha1 = "c64d943587f7187e751162b3b84445bbbd79f691"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "1.1.0"

[[deps.Markdown]]
deps = ["Base64", "JuliaSyntaxHighlighting", "StyledStrings"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2025.11.4"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.3.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.29+0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.5.6+0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Downloads", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "e189d0623e7ce9c37389bac17e80aac3b0302e75"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.83"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "e2b53ce13a53367e96601081e33d34746b571bad"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.5"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "311349fd1c93a31f783f977a71e8b062a57d4101"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.13"

[[deps.URIs]]
git-tree-sha1 = "908fec9df6c5de98548ead82a468c95ccf6cd263"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.7.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.3.1+2"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.15.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.64.0+1"
"""

# ╔═╡ Cell order:
# ╟─e7f0e7da-36cf-5780-b0fe-59ae6e1e5e4a
# ╟─24e1e176-e21b-512a-8efb-30e247a99de1
# ╟─587d6004-6339-5fd2-8c6a-593753f791e6
# ╟─7cadf5ee-4e0b-5c2e-873c-920a05dcc2f2
# ╟─b5e2329d-160d-508a-9381-0d4493be590e
# ╟─7643af80-dca8-5387-9190-1582621bb73f
# ╟─60a63814-83b0-5041-9920-41b686892ac3
# ╠═b8299810-2e68-5bbc-b601-0ec20d0b6fa4
# ╟─f7565e0f-0f48-5b95-80e5-d5a77dd6774a
# ╟─af8c87a7-b6a4-5d5b-9827-b71678bf9a14
# ╟─b53c27b3-e2d1-5b0c-b0a8-baf8fa8b1a73
# ╟─aa47e838-7cee-5512-9c92-ecd8d9729e99
# ╟─3562d3cf-62bc-5e00-8489-02af1cf6a5f5
# ╟─94145ffa-604b-5efb-9dc1-883cad451383
# ╠═ea33082a-fbff-5b3c-abbc-e1c377fec7cc
# ╟─dba93151-8cb2-5453-9843-d35cb39bb17b
# ╠═58859913-ec90-575c-9eb0-03e1795a2efc
# ╟─ae70e42c-cd3b-5c58-8761-68e20feed419
# ╟─2c15e65a-9c85-524d-a5a6-45719b68ab8f
# ╠═2837038d-94a7-5881-8f13-243480c3a57f
# ╟─409db08a-2289-5729-a1b2-201e552f400f
# ╟─f5162cbe-a684-5fa2-a14a-705d3d60689a
# ╟─3829a7ae-2729-58f0-a93a-b95a6a0e5746
# ╟─1888f291-7b93-5987-9759-01bf2da6b37f
# ╠═835706bc-afb9-52fb-800e-aed49f01ec0b
# ╟─1eed76d0-a68f-558c-b924-c4bc914341fe
# ╟─5cabd81d-5dfc-5ef5-a136-220e06791a33
# ╟─c7633dd6-c0b3-59ca-8a12-144537ac258c
# ╠═17da2c96-c7ca-5dcd-82ea-3e81922bec2d
# ╟─7389b706-bbdd-5efd-bc9e-9a4ad01e880b
# ╟─51c69ac1-587e-53e9-86a2-e043a686d88e
# ╟─b0110001-b108-5e89-99bd-9d14e02002f4
# ╠═20be8be1-e097-5d11-b725-73aca16ea3a1
# ╟─9e0c600f-901c-513a-a583-bd5e0c428bd7
# ╟─266439b7-3d74-5daf-b795-4624e293fbf0
# ╠═2ecbe4cb-28d3-5885-9572-2db7fbdbe1f1
# ╟─21a97c4b-89da-5617-ad50-7f4c0b60f978
# ╟─d92807ee-be04-52bc-af11-e209b0829ec2
# ╟─77352daf-5f47-5aeb-b885-369c1c1dd974
# ╟─a50811ad-b346-5c45-a21f-2341c312827e
# ╠═0cd7a13b-c8b1-5d11-86ec-c18991ea11a3
# ╟─3d708ccb-ab98-5955-98fa-0197cc1569db
# ╟─587dc61e-245c-5d9d-b8be-b0fbcb901795
# ╟─0b25b513-f1d0-5b1e-8ea8-9d29057b1e95
# ╟─614639aa-b65a-5b66-8cd4-989a6592ffe2
# ╟─7340c7c8-d62b-5b96-b41b-0d935d75f95c
# ╟─36851c36-d771-5578-bea7-d3db96a49ae6
# ╠═61bf1812-e29f-5782-acfa-4bdb73a23b82
# ╠═5699d052-3f84-5300-a26c-7342b576ed22
# ╟─ed3c9868-5d78-53a5-b4ba-590f3248d1e4
# ╟─e9c654a4-28c4-57c8-ab94-ea35dd829a61
# ╟─d194f6c3-45af-5f67-8f1f-f61c247ab9ff
# ╟─c96cffb8-32ee-5bb1-82a9-a4b1c9e1fcba
# ╠═0113c173-b11c-5c64-879e-6c9d5c8aa501
# ╟─7356fdb5-ee15-5290-8199-04f3bb408021
# ╠═3a4eeb0c-e89a-590c-bfef-9800f10925b2
# ╟─14f40fae-9e56-521a-83c1-a9f10c362c68
# ╟─45b0d443-4bee-5d00-94c3-4d52e231656f
# ╟─97197bc8-11c1-5a31-b8d0-59949b6263a7
# ╟─a7e6930f-f5bc-58f1-8483-fdd35800903c
# ╟─631b9fde-c48e-5b12-850c-d74a37edfc14
# ╠═a4e1e17c-31bb-59c4-9876-92af3c5ebdc5
# ╟─79430361-53a9-54ae-8fe8-8b2cd53173c2
# ╟─9f5a015c-d1c6-5d7f-b167-0a2a87457214
# ╟─de33c469-5b0b-5694-9eb9-7dc5e051d6cb
# ╟─7cc5535b-a33d-5dcc-87b9-c3fe9817ce04
# ╠═3eeefcce-421d-5474-b0ad-05dcbb44644c
# ╟─0d8e4403-4e2e-50ba-9d3e-b7c03a4948bc
# ╟─5fbaf587-18b9-5b18-89a9-4395ad734964
# ╟─0c402e53-1326-5c51-9cdc-82de6a4f4005
# ╠═e190f24b-1a79-5339-bea1-40ce569c6523
# ╟─141701f6-f2c5-5809-ba05-729292e03fa5
# ╟─0d061b57-c3d6-57e4-84a6-ce7d3c522537
# ╟─48d7269e-ae86-5b3a-b0bc-d24b82f616f3
# ╠═35dc0a91-7c99-54cc-b6d5-96123ee1aa64
# ╟─b42c0d96-fa0d-5c91-b418-7abba8e194f8
# ╟─1929fd8f-7993-5928-8e22-f6c601602135
# ╟─43e59666-6b07-5e35-89c4-6e2f7583cdac
# ╟─1e3edcd4-42bc-5d88-a32a-f896d6a9dd7d
# ╟─e07439f8-3e5d-5f6a-a9a7-6859e3fd73f7
# ╟─4ee8eeb0-bac6-5a07-9891-cec5b619f138
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
