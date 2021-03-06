<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"
    />
    <title>College Profile</title>
    <link rel="apple-touch-icon" href="assets/img/ico/apple-icon-120.png" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="assets/images/ico/favicon.ico"
    />
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/icheck.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/custom.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendors/js/gallery/photo-swipe/photoswipe.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/css/form-validation.css"
    />

    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendors/js/gallery/photo-swipe/default-skin/default-skin.css"
    />
    <!-- END VENDOR CSS-->
    <!-- BEGIN MODERN CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/app.css" />
    <!-- END MODERN CSS-->
    <!-- BEGIN Page Level CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/css/vertical-menu.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/css/palette-gradient.css"
    />
    <link rel="stylesheet" type="text/css" href="assets/css/users.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/timeline.css" />
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <!-- END Custom CSS-->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="assets/vendor/fontawesome/css/font-awesome.min.css"
    />
    <!-- BEGIN: Theme CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/bootstrap/css/bootstrap-extended.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/css/components.min.css"
    />
    <link rel="stylesheet" href="assets/css/user-feed.min.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <!-- END: Theme CSS-->
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white static-top">
      <div class="nav-container ">
        <div class="row">
          <%  try{
          if(!(request.getParameter("result").equals(null))){%>
          <div class="col-lg-8"> <p class="alert alert-success"><a href="#" class="close" data-dismiss="alert">&times;</a><%=request.getParameter("result")%></p></div>
          <%}}catch(Exception e){}%>
          <a class="navbar-brand" href="college-feed.html">
            <h3>Portal</h3>
          </a>
          <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarResponsive"
            aria-controls="navbarResponsive"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active mt-1">
                <a href="college-jobs.html" class="nav-link h2">
                  <i class="material-icons">
                    home
                  </i></a
                >
              </li>

              <li class="nav-item mt-1">
                <a class="nav-link h3" href="college-jobs.html"
                  ><i class="material-icons">
                    work
                  </i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a class="nav-link h3" href="#"
                  ><i class="material-icons">
                    event
                  </i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a href="#" class="nav-link h3"
                  ><i class="material-icons">
                    notifications
                  </i></a
                >
              </li>
              <li class="nav-item mt-1">
                <a href="directory.html" class="nav-link h3">
                  <i class="material-icons">
                    search
                  </i></a
                >
              </li>
              <div class="vertical-rule  nav-item"></div>
              <li class="nav-item mt-1">
                <a href="" class="nav-link h3">
                  <img
                    src="assets/img/portrait/large/avatar-l-1.png"
                    class="img-fluid rounded-circle width-40 profile-image"
                    alt="timeline image"
                  />
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="content-wrapper">
        <div class="content-header row"></div>
        <div class="content-body">
          <!-- users edit start -->
          <section class="users-edit">
            <div class="card">
              <div class="card-header">
                <h4>New College</h4>
              </div>
              <div class="card-content">
                <div class="card-body">
                  <div class="tab-content">
                    <div
                      class="tab-pane active"
                      id="account"
                      aria-labelledby="account-tab"
                      role="tabpanel"
                    >
                      <!-- users edit media object ends -->
                      <!-- users edit account form start -->
                      <form action="../../controller/dhe/addCollege.jsp" method="post">
                        <div class="row">
                          <div class="col-12 col-sm-6">
                            <div class="form-group">
                              <div class="controls">
                                <label>Code</label>
                                <input
                                  type="text"
                                  name="code"
                                  class="form-control"
                                  placeholder="Code"
                                  required oninvalid="this.setCustomValidity('Code is required.')"
                                  oninput="this.setCustomValidity('')"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="controls">
                                <label>Name</label>
                                <input
                                  type="text"
                                  class="form-control"
                                  name="name"
                                  placeholder="Name"
                                  required oninvalid="this.setCustomValidity('Name is required.')"
                                  oninput="this.setCustomValidity('')"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="controls">
                                <label>City</label>
                                <input
                                  type="text"
                                  class="form-control"
                                  placeholder="City"
                                  name="city"
                                  required oninvalid="this.setCustomValidity('City is required.')"
                                  oninput="this.setCustomValidity('')"
                                />
                              </div>
                            </div>
                          </div>
                          <div class="col-12 col-sm-6">
                            <div class="form-group">
                              <div class="controls">
                                <label>Username</label>
                                <input
                                  type="text"
                                  class="form-control"
                                  placeholder="Username"
                                  name="username"
                                  required oninvalid="this.setCustomValidity('Username is required.')"
                                  oninput="this.setCustomValidity('')"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="controls">
                                <label>E-mail</label>
                                <input
                                  type="email"
                                  class="form-control"
                                  placeholder="Email"
                                  name="email"
                                  required
                                  data-validation-required-message="Email field is required"
                                />
                              </div>
                            </div>

                            <div class="form-group">
                              <div class="controls">
                                <label>Password</label>
                                <input
                                  type="password"
                                  class="form-control"
                                  placeholder="Password"
                                  name="password"
                                  required pattern=".{6,}"
                                  oninvalid="this.setCustomValidity('Password must be of 6 characters.')"
                                  oninput="this.setCustomValidity('')"
                                />
                              </div>
                            </div>
                          </div>
                          <div
                            class="col-12 d-flex flex-sm-row flex-column justify-content-end mt-1"
                          >
                            <button
                              type="submit"
                              class="btn btn-primary glow mb-1 mb-sm-0 mr-0 mr-sm-1"
                            >
                              Save changes
                            </button>
                            <button type="reset" class="btn btn-light">
                              Cancel
                            </button>
                          </div>
                        </div>
                      </form>
                      <!-- users edit account form ends -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- users edit ends -->
        </div>
      </div>
    </div>
    <!-- END: Content-->
    <!-- ////////////////////////////////////////////////////////////////////////////-->

    <!-- BEGIN PAGE VENDOR JS-->
    <script src="assets/js/jqBootstrapValidation.js"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>
