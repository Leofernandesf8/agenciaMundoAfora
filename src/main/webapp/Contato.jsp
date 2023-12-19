<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contato | Mundo Afora</title>
    <link rel="stylesheet" href="/src/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</head>
<body>
    
    <header style="width: 90%; margin: auto;">
        <!-- ... (seu código de navegação) ... -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="/src/html/index.html">Mundo Afora</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/src/html/index.html">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/src/html/destino.html">Destino</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/src/html/promocoes.html">Promoções</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/src/html/contato.html">Contato</a>
                  </li>
                  <!--<li class="nav-item dropdown">
                                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                      aria-expanded="false">
                                      mais-->
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Action</a></li>
                    <li><a class="dropdown-item" href="#">Another action</a></li>
                    <li>
                      <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                  </ul>
                  </li>
                  <!--<li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                      </li>-->
                </ul>
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search" placeholder="Pesquisar" aria-label="Search">
                  <!--<button class="btn btn-outline-success" type="submit">Pesquisar</button>-->
                </form>
              </div>
            </div>
          </nav>
    </header>

    <section class="container mt-5">
        <h1>Entre em Contato</h1>
        <p>Estamos aqui para responder a todas as suas perguntas e ouvir seus feedbacks.</p>
        
        <!-- Informações de Contato -->
        <div class="row">
            <div class="col-md-6">
                <h2>Informações de Contato</h2>
                <ul>
                    <li><strong>Nome:</strong> </li>
                    <li><strong>Telefone:</strong> </li>
                    <li><strong>E-mail:</strong> </li>
                </ul>
            </div>
            <div class="col-md-6">
                <h2>Formulário de Contato</h2>
                <!-- Formulário de Contato aqui -->
                <form action="CreateController" method="POST">
                    <div class="mb-3">
                        <label for="nome" class="form-label">Nome</label>
                        <input type="text" class="form-control" id="nome" name="nome" required>
                    </div>
                    <div class="mb-3">
                        <label for="nome" class="form-label">Telefone</label>
                        <input type="text" class="form-control" id="telefone" name="telefone" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="mensagem" class="form-label">Mensagem</label>
                        <textarea class="form-control" id="mensagem" name="mensagem" rows="4" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar Mensagem</button>
                </form>
            </div>
        </div>
    </section>

</body>
</html>


</body>
</html>