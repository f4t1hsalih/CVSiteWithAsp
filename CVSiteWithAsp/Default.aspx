﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>f4t1hsalih</title>

    <!-- Bootstrap core CSS -->
    <link href="/Folders/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="/Folders/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/Folders/css/resume.min.css" rel="stylesheet">
</head>

<body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">
                <asp:Label ID="name" runat="server" Text="***"></asp:Label>
            </span>
            <span class="d-none d-lg-block">
                <asp:Image ID="photo" class="img-fluid img-profile rounded-circle mx-auto mb-2" runat="server" ImageUrl="***" alt="" />
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">Hakkında</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#experience">Deneyimler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#education">Eğitim</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#skills">Beceriler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#interests">Hobiler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#awards">Başarılar</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid p-0">

        <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <h1 class="mb-0" runat="server">
                            <asp:Label ID="name" runat="server" Text='<%#Eval("abt_name")%>'></asp:Label>
                            <asp:Label ID="surname" class="text-primary" runat="server" Text='<%#Eval("abt_surname")%>'></asp:Label>
                        </h1>
                        <div class="subheading mb-5" runat="server">
                            <asp:Label ID="address" runat="server" Text='<%#Eval("abt_address")%>'></asp:Label>
                            ·
                    <asp:Label ID="tel" runat="server" Text='<%#Eval("abt_tel")%>'></asp:Label>
                            ·
                            <a href="mailto:<%#Eval("abt_mail")%>">
                                <asp:Label ID="mail" runat="server" Text='<%#Eval("abt_mail")%>'></asp:Label>
                            </a>

                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="note" runat="server" Text='<%#Eval("abt_note")%>'></asp:Label>
                        </p>
                        <div class="social-icons">
                            <a href='<%#Eval("abt_linkedin")%>'>
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a href='<%#Eval("abt_github")%>'>
                                <i class="fab fa-github"></i>
                            </a>
                            <a href='<%#Eval("abt_twitter")%>'>
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href='<%#Eval("abt_instagram")%>'>
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
            <div class="my-auto">
                <h2 class="mb-5">DENEYİMLER</h2>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="exp_title" runat="server" Text='<%#Eval("exp_title") %>'></asp:Label>
                                </h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="exp_subtitle" runat="server" Text='<%#Eval("exp_subtitle") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="exp_description" runat="server" Text='<%#Eval("exp_description") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="resume-date text-md-right">
                                <asp:Label ID="exp_date" class="text-primary" runat="server" Text='<%#Eval("exp_date") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
            <div class="my-auto">
                <h2 class="mb-5">EĞİTİM</h2>

                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="edc_title" runat="server" Text='<%#Eval("edc_title") %>'></asp:Label>
                                </h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="edc_subtitle" runat="server" Text='<%#Eval("edc_subtitle") %>'></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="edc_description" runat="server" Text='<%#Eval("edc_description") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="edc_note" runat="server" Text='<%#Eval("edc_note") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="resume-date text-md-right">
                                <asp:Label ID="edc_date" class="text-primary" runat="server" Text='<%#Eval("edc_date") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
            <div class="my-auto">
                <h2 class="mb-5">Yetenekler</h2>

                <div class="subheading mb-3">PROGRAMLAMA DİLLERİ &amp; ARAÇLAR</div>
                <ul class="list-inline dev-icons">
                    <li class="list-inline-item">
                        <i class="fab fa-html5"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-css3-alt"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-js-square"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-angular"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-react"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-node-js"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-github-square"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-stack-overflow"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-wordpress"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-java"></i>
                    </li>
                    <li class="list-inline-item">
                        <i class="fab fa-docker"></i>
                    </li>
                </ul>

                <div class="subheading mb-3">İş Akışı</div>
                <ul class="fa-ul mb-0">
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <li>
                                <i class="fa-li fa fa-check"></i>
                                <asp:Label ID="skl_skills" runat="server" Text='<%#Eval("skl_skills") %>'></asp:Label>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
            <div class="my-auto">
                <h2 class="mb-5">İLGİ ALANLARI</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                        <p class="mb-0">
                            <asp:Label ID="int_interest" runat="server" Text='<%#Eval("int_interest") %>'></asp:Label>
                        </p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
            <div class="my-auto">
                <h2 class="mb-5">ÖDÜLLER &amp; SERTİFİKALAR</h2>
                <ul class="fa-ul mb-0">
                    <asp:Repeater ID="Repeater6" runat="server">
                        <ItemTemplate>
                            <li>
                                <i class="fa-li fa fa-trophy text-warning"></i>
                                <asp:Label ID="awd_award" runat="server" Text='<%#Eval("awd_award") %>'></asp:Label>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>

    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="/Folders/vendor/jquery/jquery.min.js"></script>
    <script src="/Folders/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/Folders/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/Folders/js/resume.min.js"></script>

</body>

</html>
