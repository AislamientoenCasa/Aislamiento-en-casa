<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Aislamiento de cubiertas sin inversión inicial mediante CAE. Evaluación técnica en Castilla y León y Asturias." />
  <title>Aislamiento en Casa · Evaluación técnica sin inversión inicial</title>

  <style>
    :root {
      --bg: #f5f7fa;
      --surface: #ffffff;
      --text: #111111;
      --muted: #6b7785;
      --line: #e8edf2;
      --accent: #ff7a00;
      --accent-green: #25d366;
      --badge-bg: #ecfdf5;
      --badge-text: #15803d;
      --shadow: 0 12px 32px rgba(0, 0, 0, 0.08);
      --radius: 16px;
      --max: 1100px;
    }

    * {
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      margin: 0;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }

    img,
    video {
      max-width: 100%;
      display: block;
    }

    .container {
      width: min(100% - 32px, var(--max));
      margin: 0 auto;
    }

    header {
      position: sticky;
      top: 0;
      background: rgba(255, 255, 255, 0.95);
      backdrop-filter: blur(8px);
      border-bottom: 1px solid var(--line);
      z-index: 20;
    }

    .nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 14px 0;
      gap: 16px;
    }

    .logo img {
      height: 44px;
      width: auto;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 14px 22px;
      border-radius: 12px;
      font-weight: 700;
      text-decoration: none;
      border: none;
      cursor: pointer;
      transition: 0.2s ease;
    }

    .btn:hover {
      transform: translateY(-1px);
    }

    .btn-primary {
      background: var(--accent);
      color: #fff;
      box-shadow: 0 10px 20px rgba(255, 122, 0, 0.2);
    }

    .btn-whatsapp {
      background: var(--accent-green);
      color: #fff;
    }

    .hero {
      padding: 60px 0 40px;
      background: linear-gradient(180deg, #ffffff 0%, #f5f7fa 100%);
    }

    .hero video {
      width: 100%;
      border-radius: 20px;
      margin-bottom: 24px;
      box-shadow: var(--shadow);
    }

    .badge {
      display: inline-block;
      background: var(--badge-bg);
      color: var(--badge-text);
      padding: 6px 10px;
      border-radius: 999px;
      font-size: 0.85rem;
      font-weight: 700;
      margin-bottom: 12px;
    }

    h1 {
      font-size: clamp(2rem, 5vw, 3.5rem);
      line-height: 1.1;
      margin: 0 0 12px;
      letter-spacing: -0.03em;
    }

    h2 {
      margin-top: 0;
      margin-bottom: 12px;
      letter-spacing: -0.02em;
    }

    h3 {
      margin-top: 0;
      margin-bottom: 8px;
    }

    p {
      margin-top: 0;
    }

    .hero p {
      color: var(--muted);
      max-width: 760px;
    }

    .cta-row {
      margin-top: 20px;
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
    }

    .grid {
      display: grid;
      gap: 20px;
    }

    .grid-2 {
      grid-template-columns: 1fr 1fr;
    }

    .card {
      background: var(--surface);
      padding: 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      border: 1px solid var(--line);
    }

    .card img {
      border-radius: 12px;
    }

    .section {
      margin-top: 40px;
    }

    .steps {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 16px;
    }

    .step {
      background: #fff;
      padding: 20px;
      border-radius: 12px;
      border: 1px solid var(--line);
      box-shadow: var(--shadow);
    }

    ul {
      padding-left: 20px;
      margin: 0;
    }

    li + li {
      margin-top: 8px;
    }

    form input,
    form textarea {
      width: 100%;
      padding: 14px 16px;
      border: 1px solid #d7dee7;
      border-radius: 12px;
      font: inherit;
      background: #fff;
      color: var(--text);
    }

    form input:focus,
    form textarea:focus {
      outline: 2px solid rgba(255, 122, 0, 0.15);
      border-color: var(--accent);
    }

    .muted {
      color: var(--muted);
    }

    .small {
      font-size: 14px;
    }

    .sticky-cta {
      position: fixed;
      bottom: 20px;
      right: 20px;
      z-index: 50;
    }

    footer {
      padding: 30px 0 40px;
      color: #777;
    }

    @media (max-width: 900px) {
      .grid-2,
      .steps {
        grid-template-columns: 1fr;
      }

      .nav {
        flex-wrap: wrap;
      }
    }

    @media (max-width: 640px) {
      .btn {
        width: 100%;
      }

      .sticky-cta {
        left: 16px;
        right: 16px;
        bottom: 16px;
      }

      .sticky-cta .btn {
        width: 100%;
      }
    }
  </style>
</head>
<body>

  <header>
    <div class="container nav">
      <div class="logo">
        <img src="logo.png" alt="Aislamiento en Casa">
      </div>
      <a href="#contacto" class="btn btn-primary">Solicitar evaluación técnica</a>
    </div>
  </header>

  <main>
    <section class="hero">
      <div class="container">
        <video autoplay muted loop playsinline>
          <source src="video.mp4" type="video/mp4">
          Tu navegador no soporta vídeo HTML5.
        </video>

        <span class="badge">Evaluación técnica · Modelo CAE</span>
        <h1>Evaluamos si tu vivienda puede mejorar su eficiencia sin inversión inicial</h1>
        <p>
          Trabajamos únicamente en proyectos donde el ahorro energético certificable permite financiar la intervención mediante Certificados de Ahorro Energético (CAE).
        </p>

        <div class="cta-row">
          <a href="#contacto" class="btn btn-primary">Solicitar evaluación técnica</a>
          <a href="https://wa.me/34600000000" class="btn btn-whatsapp">WhatsApp</a>
        </div>
      </div>
    </section>

    <section class="container grid grid-2 section">
      <div class="card">
        <img src="instalacion.jpg" alt="Técnicos instalando aislamiento insuflado en vivienda" style="margin-bottom:16px;">
        <h2>Cómo funciona</h2>
        <p>
          Generamos ahorro energético certificado y lo utilizamos como base del modelo de financiación de la intervención.
        </p>
        <p>
          Solo actuamos cuando existe viabilidad técnica, potencial de ahorro suficiente y posibilidad real de certificación.
        </p>
      </div>

      <div class="card">
        <img src="imagen.jpg" alt="Cubierta de vivienda con mejora de aislamiento">
      </div>
    </section>

    <section class="container section">
      <h2>Proceso</h2>
      <div class="steps">
        <div class="step">
          <strong>1</strong>
          <p>Evaluación técnica de la vivienda y la cubierta.</p>
        </div>
        <div class="step">
          <strong>2</strong>
          <p>Análisis de viabilidad energética y certificación.</p>
        </div>
        <div class="step">
          <strong>3</strong>
          <p>Ejecución de la intervención si el proyecto es apto.</p>
        </div>
        <div class="step">
          <strong>4</strong>
          <p>Gestión del ahorro energético generado mediante CAE.</p>
        </div>
      </div>
    </section>

    <section class="container grid grid-2 section">
      <div class="card">
        <h2>Beneficios</h2>
        <ul>
          <li>Sin inversión inicial en proyectos viables</li>
          <li>Reducción del consumo energético</li>
          <li>Mayor confort térmico en la vivienda</li>
          <li>Mejora del comportamiento energético del inmueble</li>
        </ul>
      </div>

      <div class="card">
        <h2>Transparencia del modelo</h2>
        <p>
          No todos los inmuebles son aptos para este modelo.
        </p>
        <p>
          Solo actuamos cuando el ahorro energético estimado permite recuperar la inversión mediante Certificados de Ahorro Energético (CAE).
        </p>
        <p>
          En caso contrario, informamos al propietario sin compromiso.
        </p>
      </div>
    </section>

    <section class="container section">
      <h2>Caso real</h2>
      <div class="card">
        <img src="antes.jpg" alt="Antes del aislamiento" style="margin-bottom:10px;">
        <img src="despues.jpg" alt="Después del aislamiento" style="margin-bottom:16px;">
        <p><strong>Vivienda unifamiliar · Castilla y León</strong></p>
        <p>
          Se realizó aislamiento insuflado en la cubierta en una vivienda con pérdidas térmicas importantes durante los meses fríos.
        </p>
        <p>
          Tras la intervención, se mejoró el confort térmico interior y se optimizó el comportamiento energético de la vivienda.
        </p>
        <ul>
          <li>Tipo: vivienda unifamiliar</li>
          <li>Intervención: aislamiento insuflado en cubierta</li>
          <li>Resultado: mejora térmica y ahorro energético estimado</li>
        </ul>
      </div>
    </section>

    <section class="container grid grid-2 section">
      <div class="card">
        <h2>Testimonio</h2>
        <p>
          “El proceso fue claro, la intervención ordenada y la vivienda ganó confort térmico desde los primeros días.”
        </p>
      </div>

      <div class="card">
        <h2>Ámbito de actuación</h2>
        <p>
          Actualmente trabajamos en Castilla y León y Asturias, según disponibilidad por zona y viabilidad técnica del proyecto.
        </p>
      </div>
    </section>

    <section class="container section">
      <h2>Preguntas frecuentes</h2>

      <div class="card" style="margin-bottom:16px;">
        <h3>¿Es realmente sin inversión inicial?</h3>
        <p>
          Sí, siempre que el proyecto cumpla las condiciones técnicas y energéticas necesarias para que el modelo CAE sea viable.
        </p>
      </div>

      <div class="card">
        <h3>¿Dónde trabajáis?</h3>
        <p>
          Actualmente trabajamos en Castilla y León y Asturias, según disponibilidad por zona y viabilidad técnica del proyecto.
        </p>
      </div>
    </section>

    <section class="container section">
      <div class="card">
        <h2>Programa de recomendación</h2>
        <p>
          Si conoces a otras personas interesadas, puedes obtener un bono por recomendaciones validadas:
        </p>
        <ul>
          <li>Trae 2 clientes → <strong>30€</strong> en bono (El Corte Inglés o Amazon)</li>
          <li>Trae 5 clientes → <strong>50€</strong> en bono (El Corte Inglés o Amazon)</li>
        </ul>
        <p class="muted small" style="margin-top:16px;">
          El bono se entrega una vez realizada la intervención en los proyectos recomendados y validados.
        </p>

        <div class="cta-row">
          <a href="#referidos" class="btn btn-primary">Recomendar ahora</a>
        </div>
      </div>
    </section>

    <section id="referidos" class="container section">
      <div class="card">
        <h2>Formulario para referidos</h2>
        <p class="muted">
          Comparte tus datos y los de las personas interesadas para poder registrar y seguir cada recomendación.
        </p>

        <form action="https://formspree.io/f/TU_ID_REFERIDOS" method="POST">
          <input type="text" name="nombre_recomendador" placeholder="Tu nombre" required>
          <br><br>

          <input type="tel" name="telefono_recomendador" placeholder="Tu teléfono" required>
          <br><br>

          <input type="email" name="email_recomendador" placeholder="Tu correo electrónico">
          <br><br>

          <input type="text" name="codigo_recomendacion" placeholder="Código de recomendación" value="AENCASA-001" required>
          <br><br>

          <input type="text" name="nombre_referido" placeholder="Nombre de la persona recomendada" required>
          <br><br>

          <input type="tel" name="telefono_referido" placeholder="Teléfono de la persona recomendada" required>
          <br><br>

          <input type="text" name="zona_referido" placeholder="Zona o localidad">
          <br><br>

          <textarea name="observaciones" placeholder="Observaciones" rows="4"></textarea>
          <br><br>

          <button type="submit" class="btn btn-primary">Enviar recomendación</button>
        </form>

        <p style="margin-top:18px;">
          <strong>Código de recomendación:</strong> AENCASA-001
        </p>
        <p class="muted small">
          Puedes asignar un código distinto a cada colaborador o recomendador para identificar fácilmente el origen de cada lead.
        </p>
      </div>
    </section>

    <section id="contacto" class="container section">
      <div class="card">
        <h2>Solicitar estudio</h2>
        <p class="muted">
          Zona de actuación: Castilla y León y Asturias.
        </p>
        <p class="muted">
          Actuamos por zonas según disponibilidad y viabilidad técnica del proyecto.
        </p>

        <form action="https://formspree.io/f/TU_ID" method="POST">
          <input type="text" name="nombre" placeholder="Nombre" required>
          <br><br>

          <input type="tel" name="telefono" placeholder="Teléfono" required>
          <br><br>

          <input type="email" name="email" placeholder="Correo electrónico">
          <br><br>

          <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
      </div>
    </section>

    <section class="container section">
      <div class="card">
        <h2>Seguimiento de leads</h2>
        <p>
          Para controlar correctamente las recomendaciones, te recomendamos registrar cada lead con estos estados:
        </p>
        <ul>
          <li><strong>Recibido</strong> → lead enviado desde el formulario</li>
          <li><strong>Contactado</strong> → primer contacto realizado</li>
          <li><strong>Evaluación técnica</strong> → caso en revisión</li>
          <li><strong>Validado</strong> → proyecto apto y aprobado</li>
          <li><strong>Intervención realizada</strong> → genera derecho a bono</li>
          <li><strong>Bono entregado</strong> → incentivo abonado al recomendador</li>
        </ul>
        <p class="muted small" style="margin-top:16px;">
          Este seguimiento puede hacerse en un CRM, una hoja de cálculo o integrando el formulario con tu sistema comercial.
        </p>
      </div>
    </section>
  </main>

  <div class="sticky-cta">
    <a href="https://wa.me/34600000000" class="btn btn-whatsapp">WhatsApp</a>
  </div>

  <footer>
    <div class="container">
      © 2026 Aislamiento en Casa
    </div>
  </footer>

</body>
</html>
