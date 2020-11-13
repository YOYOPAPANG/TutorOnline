<%-- 
    Document   : test
    Created on : Nov 13, 2020, 12:35:24 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body ng-controller="AuthCtrl" id="app" class="app ng-scope on-canvas" custom-page="" off-canvas-nav="" data-new-gr-c-s-check-loaded="14.974.0">

    <!--[if lt IE 9]>
    <div class="lt-ie9-bg">
      <p class="browsehappy">You are using an <strong>outdated</strong> browser.</p>
      <p>Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    </div>
    <![endif]-->

    <div id="header" ng-style="vm.headerStyle" class="header-container header-fixed ng-isolate-scope" style="background-color: rgb(21, 33, 48); color: rgb(255, 255, 255);">
  <header class="top-header clearfix">

    <!-- Logo -->
    <div class="logo">
      <a href="#/" class="header-m-text-color">
        <img ng-src="https://learning.sit.kmutt.ac.th/uploads/theme/header_logo-1447953988.png" src="https://learning.sit.kmutt.ac.th/uploads/theme/header_logo-1447953988.png">
        <span ng-bind="vm.headerText" class="ng-binding"></span>
        <span class="sub-brand"></span>
      </a>
    </div>

    <!-- needs to be put after logo to make it work -->
    <div class="menu-button" toggle-off-canvas="">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </div>

    <div class="top-nav">
      <ul class="nav-semester nav-left list-unstyled">
        <li class="dropdown header-m-text-color" dropdown="" is-open="status.isopenSemester">
          <a href="javascript:;" class="dropdown-toggle header-m-text-color" dropdown-toggle="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="icon icon-calendar"></i>
              <span class="ng-binding">1/2563</span>
          </a>
          <div class="dropdown-menu with-arrow panel panel-default">
            <ul class="list-group">
              <!-- ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}" style="">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">2/2562</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">1/2562</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">2/2561</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">1/2561</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">2/2560</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">1/2560</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">2/2559</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">1/2559</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} --><li class="list-group-item ng-scope" ng-repeat="o in $root.semesters | filter: {id: '!'+$root.currentSemester.id}">
                <a href="javascript:;" class="media" ng-click="vm.changeSemester(o)">
                  <div class="media-body">
                    <span class="text-muted ng-binding">2/2558</span>
                  </div>
                </a>
              </li><!-- end ngRepeat: o in $root.semesters | filter: {id: '!'+$root.currentSemester.id} -->
            </ul>
          </div>
        </li>
      </ul>
      <ul class="nav-right pull-right list-unstyled">
        <li class="search-box visible-md visible-lg">
          <div class="input-group">
              <span class="input-group-addon header-m-text-color" ng-click="vm.search()"><i class="ti-search"></i></span>
              <input type="text" class="form-control header-m-text-color ng-pristine ng-untouched ng-valid" placeholder="Search for videos..." ng-keyup="$event.keyCode == 13 &amp;&amp; vm.search();" ng-model="vm.wordsearch">
              <!-- <form name="searchForm" ng-submit="submitSearch()">
                <autocomplete ng-model="keyword" data="keywords" on-type="updateKeywords" on-select="selectSearchKeyword(message)" attr-class="autocomplete-custom" attr-placeholder="ค้นหาข้อมูลที่นี่">
                </autocomplete>
              </form> -->
          </div>
        </li>
        <li class="text-normal user-role">
          <span class="label label-default ng-binding" ng-show="$root.isStudent" style=""></span>
          <span class="label ng-binding label-info" ng-class="{'label-info': $root.isStudent, 'label-danger': $root.isAdmin, 'label-success': $root.isLecturer, 'label-warning': $root.isStaff}" style="">Student</span>
        </li>
        <li class="dropdown ng-hide" dropdown="" is-open="status.isopenBell" ng-hide="true">
            <a href="javascript:;" class="dropdown-toggle" dropdown-toggle="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="ti-bell"></i>
                <span class="badge badge-info">3</span>
            </a>
            <div class="dropdown-menu with-arrow panel panel-default pull-right">
                <div class="panel-heading">
                    You have 3 notifications.
                </div>
                <ul class="list-group">
                    <li class="list-group-item">
                        <a href="javascript:;" class="media">
                            <span class="media-left media-icon">
                                <span class="btn-icon btn-icon-round btn-success"><i class="ti-bell"></i></span>
                            </span>
                            <div class="media-body">
                                <span class="block">New tasks needs to be done</span>
                                <span class="text-muted block">2min ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:;" class="media">
                            <span class="media-left media-icon">
                                <span class="btn-icon btn-icon-round btn-info"><i class="ti-bell"></i></span>
                            </span>
                            <div class="media-body">
                                <span class="block">Change your password</span>
                                <span class="text-muted">3 hours ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:;" class="media">
                            <span class="media-left media-icon">
                                <span class="btn-icon btn-icon-round btn-danger"><i class="ti-bell"></i></span>
                            </span>
                            <div class="media-body">
                                <span class="block">New feature added</span>
                                <span class="text-muted">9 hours ago</span>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="panel-footer">
                    <a href="#/mail/inbox">Show all notifications.</a>
                </div>
            </div>
        </li>
        <li class="dropdown text-normal nav-profile header-m-text-color" dropdown="" is-open="status.isopenProfile">
            <a href="javascript:;" class="dropdown-toggle header-m-text-color" dropdown-toggle="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img src="images/avatar.png" alt="" class="img-circle img30_30">
                <span data-i18n="61130500047@st.sit.kmutt.ac.th">61130500047@st.sit.kmutt.ac.th</span>
            </a>
            <ul class="dropdown-menu with-arrow pull-right">
                <!-- <li >
                    <a href="#/pages/profile">
                        <i class="ti-user"></i>
                        <span data-i18n="My Profile"></span>
                    </a>
                </li> -->
                <li>
                    <a ng-click="vm.signout()">
                        <i class="ti-export"></i>
                        <span data-i18n="Log Out">Log Out</span>
                    </a>
                </li>
            </ul>
        </li>
      </ul>
    </div>

  </header>
</div>

    <div class="main-container">
      <div id="nav-container" class="nav-container nav-fixed nav-horizontal bg-white ng-isolate-scope">
  <div class="nav-wrapper">
    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><ul id="nav" class="nav" data-slim-scroll="" data-collapse-nav="" data-highlight-active="" style="overflow: hidden; width: auto; height: 100%;">

      <li class=""><a href="#/home" ng-click="vm.toggleMenuBar()"> <i class="ti-home"></i><span data-i18n="Home">Home</span> </a></li>
      <li class="active"><a href="#/subjects" ng-click="vm.toggleMenuBar()"> <i class="icon icon-book-5"></i><span data-i18n="Subjects">Subjects</span> </a></li>
      <li ng-show="$root.authUser.userType=='Student'" class="" style=""><a href="#/subscriptions" ng-click="vm.toggleMenuBar()"> <i class="ti-heart"></i><span data-i18n="Subscriptions">Subscriptions</span> </a></li>
      <li><a href="#/history" ng-click="vm.toggleMenuBar()"> <i class="ti-timer"></i><span data-i18n="History">History</span> </a></li>
      <li><a href="#/announcement" ng-click="vm.toggleMenuBar()"> <i class="ti-announcement"></i><span data-i18n="Announcement">Announcement</span> </a></li>
    </ul><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 42px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
  </div>
</div>

      <div id="content" class="content-container">
        <!-- ngView:  --><div ng-view="" class="view-container animate-fade-up ng-scope" style=""><div id="subject-page" class="page subjects-page ng-scope">
  <div class="row">
    <div class="col-lg-12 col-xs-12">
      <div class="browse-box-container">
        <div class="browse-box row">
          <div class="col-sm-4 col-xs-12">
            <div class="search-text">
              <input type="text" placeholder="Search for subjects" ng-model="vm.keyword" my-enter="vm.getSubjects()" class="ng-pristine ng-valid ng-touched" style="">
            </div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="faculty-selection" ng-click="vm.showSelectionMenu('faculty')">
              <i class="icon icon-school-2"></i>
              <span ng-bind="vm.selectedFaculty.name" class="ng-binding">All Faculties</span>
            </div>
          </div>
          <div class="col-sm-4 col-xs-6">
            <div class="department-selection" ng-click="vm.showSelectionMenu('department')">
              <i class="icon icon-alumni-2"></i>
              <span ng-bind="vm.selectedDepartment.name" class="ng-binding">All Departments</span>
            </div>
          </div>
        </div>
        <div class="search-button hidden-xs" ng-click="vm.getSubjects()">
          <span class="glyphicon glyphicon-search"></span>
        </div>
      </div>
    </div>
  </div>
  <div id="selection-area" class="selection-area ng-hide" ng-show="vm.showMenu">
      <div id="selection-bg" class="bg" ng-click="vm.hideMenu()"></div>
      <div id="menu-list" class="menu-list">
        <div class="faculty-list">
          <ul>
            <!-- ngRepeat: faculty in vm.faculties --><li ng-repeat="faculty in vm.faculties" ng-click="vm.selectFaculty(faculty)" ng-class="{'active':(vm.selectedFaculty === faculty), 'all':(faculty === vm.allFaculty)}" class="ng-scope active all">
              <span ng-bind="faculty.name" class="ng-binding">All Faculties</span>
            </li><!-- end ngRepeat: faculty in vm.faculties --><li ng-repeat="faculty in vm.faculties" ng-click="vm.selectFaculty(faculty)" ng-class="{'active':(vm.selectedFaculty === faculty), 'all':(faculty === vm.allFaculty)}" class="ng-scope">
              <span ng-bind="faculty.name" class="ng-binding">School of Information and Technology</span>
            </li><!-- end ngRepeat: faculty in vm.faculties -->
          </ul>
        </div>
        <div class="department-list" ng-show="vm.selectedFaculty">
          <ul>
            <!-- ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope active all">
              <span ng-bind="department.name" class="ng-binding">All Departments</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Bachelor of Science Program in Information Technology (B.Sc.IT)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Bachelor of Science Program in Computer Science (B.Sc.CS)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Master of Science Program in Information Technology (M.Sc.IT)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Master of Science Programme in Business Information System / Master of Science Programme in  Digital Business Information System  (M.Sc.BIS/M.Sc.DBIS)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Master of Science Program in Software Engineering (M.Sc.SE)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Master of Science Program in Bioinfomatics (M.Sc.Bio)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Master of Science Program in Computer Science (M.Sc.CS)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Doctor of Philosophy Program in Information Technology (Ph.D.IT)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Training external organizations</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Training for Master of Science Program</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Doctor of Philosophy Program in Computer Science (Ph.D.CS)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Bachelor of Arts Programme in Digital Service Innovation (B.A.DSI)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">English Language Coordinating Section</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Certification in Digital Service Innovation (DSI.WiL)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Certification in Big Data Analytics</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments --><li ng-repeat="department in vm.selectedFaculty.departments" ng-click="vm.selectDepartment(department)" ng-class="{'active':(vm.selectedDepartment === department), 'all':(department === vm.allDepartment)}" class="ng-scope">
              <span ng-bind="department.name" class="ng-binding">Training Big Data Analytics (รุ่น 2)</span>
            </li><!-- end ngRepeat: department in vm.selectedFaculty.departments -->
          </ul>
        </div>
      </div>
  </div>
  <div class="subject-list-container row">
    <div class="col-lg-12 col-xs-12">
      <!-- ngIf: vm.loading -->
      <!-- ngIf: vm.error -->
      <!-- ngIf: !vm.error && !vm.loading --><div class="subject-list ng-scope" ng-if="!vm.error &amp;&amp; !vm.loading">
        <ul>
          <!-- ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">"Intensive Course"</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Intensive Course</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIF511</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Programming Fundamentals</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIF621</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Sequence Analysis And Annotation</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS601</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Business System Analysis and Design (หลักสูตรปรับปรุง เริ่มใช้ 1/2563)</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">10</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">13</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS601</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Business Analysis for Business Information System</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS602</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Business Decision and Data Analytics (หลักสูตรปรับปรุง เริ่มใช้ 1/2563)</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="https://learning.sit.kmutt.ac.th/uploads/subject_logo/default-subject-11.png" class="img-circle" src="https://learning.sit.kmutt.ac.th/uploads/subject_logo/default-subject-11.png">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS602</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Electronic Business Technology</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS603</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Strategic Marketing Management  (หลักสูตรปรับปรุง เริ่มใช้ 1/2563)</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">11</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">12</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS603</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Strategic Marketing Management </span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">4</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS604</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Business Database Management (หลักสูตรปรับปรุง เริ่มใช้ 1/2563)</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">15</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">28</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS604</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Business Information Analytics</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS605</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Software Development Technologies for digital Business (หลักสูตรปรับปรุง เริ่มใช้ 1/2563)</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">11</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">15</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS605</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Web-based Application Development</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">1</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS606</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Digital Infrastructure and Cyber Security System (หลักสูตรปรับปรุง เริ่มใช้ 1/2563)</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;https://learning.sit.kmutt.ac.th/uploads/subject_cover/cover-1485172375.jpg&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">16</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">15</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="https://learning.sit.kmutt.ac.th/uploads/subject_logo/default-subject-19.png" class="img-circle" src="https://learning.sit.kmutt.ac.th/uploads/subject_logo/default-subject-19.png">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS606</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Computer Networks and Internet Architectures</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">2</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">12</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS607</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Economics and Finance for Business System</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;https://learning.sit.kmutt.ac.th/uploads/subject_cover/cover-1563383656.png&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="https://learning.sit.kmutt.ac.th/uploads/subject_logo/default-subject-22.png" class="img-circle" src="https://learning.sit.kmutt.ac.th/uploads/subject_logo/default-subject-22.png">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS608</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}" style="background-color: rgb(91, 144, 191);">
    <span ng-bind="vm.subject.name" class="ng-binding">Entrepreneurship and Organizational behavior</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">0</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">0</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS611</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Online Entrepreneur</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">2</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">11</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS612</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Supply Chain Management  </span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects --><li ng-repeat="subject in vm.subjects" class="ng-scope">
            <subject-card ng-click="vm.goToSubject(subject.id)" subject="subject" class="ng-isolate-scope"><div class="subject-card">
  <div class="cover" ng-style="{'background': 'url('+vm.subject.coverUrl+')'}" style="background: url(&quot;null&quot;);">
    <div class="content-stat">
      <div class="bg"></div>
      <div class="stat">
        <span class="ti-files"></span> <span ng-bind="vm.subject.contentCount.materials" class="ng-binding">12</span>&nbsp;&nbsp;
        <span class="ti-video-clapper"></span> <span ng-bind="vm.subject.contentCount.videos" class="ng-binding">12</span>
      </div>
    </div>
    <div class="logo">
      <img ng-src="images/default-subject.jpg" class="img-circle" src="images/default-subject.jpg">
    </div>
  </div>
  <!-- ngIf: $root.isStudent --><div class="subscribe ng-scope" ng-if="$root.isStudent">
    <!-- ngIf: vm.subject.subscribed -->
  </div><!-- end ngIf: $root.isStudent -->
  <div class="code">
    <span ng-bind="vm.subject.code" class="ng-binding">BIS613</span>
  </div>
  <div class="name" ng-style="{'background-color': vm.subject.color}">
    <span ng-bind="vm.subject.name" class="ng-binding">Electronic Payment System</span>
  </div>
</div>
</subject-card>
          </li><!-- end ngRepeat: subject in vm.subjects -->
          <li class="ghost"></li>
          <li class="ghost"></li>
          <li class="ghost"></li>
          <li class="ghost"></li>
          <li class="ghost"></li>
          <li class="ghost"></li>
        </ul>
      </div><!-- end ngIf: !vm.error && !vm.loading -->

      <!-- ngIf: !vm.error && !vm.loading --><div class="paging text-center ng-scope" ng-if="!vm.error &amp;&amp; !vm.loading">
        <!-- ngIf: vm.pageInfo.isShow --><ul class="pagination ng-isolate-scope ng-valid" total-items="vm.pageInfo.totalItems" items-per-page="vm.pageInfo.perPage" ng-model="vm.pageInfo.page" ng-change="vm.getSubjects()" ng-if="vm.pageInfo.isShow" max-size="vm.maxSize" boundary-links="true" rotate="false" previous-text="‹" next-text="›">
  <!-- ngIf: ::boundaryLinks --><li ng-if="::boundaryLinks" ng-class="{disabled: noPrevious()||ngDisabled}" class="pagination-first ng-scope disabled"><a href="" ng-click="selectPage(1, $event)" class="ng-binding">First</a></li><!-- end ngIf: ::boundaryLinks -->
  <!-- ngIf: ::directionLinks -->
  <!-- ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope active"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">1</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">2</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">3</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">4</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">5</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">6</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">7</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">8</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">9</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">10</a></li><!-- end ngRepeat: page in pages track by $index --><li ng-repeat="page in pages track by $index" ng-class="{active: page.active,disabled: ngDisabled&amp;&amp;!page.active}" class="pagination-page ng-scope"><a href="" ng-click="selectPage(page.number, $event)" class="ng-binding">...</a></li><!-- end ngRepeat: page in pages track by $index -->
  <!-- ngIf: ::directionLinks -->
  <!-- ngIf: ::boundaryLinks --><li ng-if="::boundaryLinks" ng-class="{disabled: noNext()||ngDisabled}" class="pagination-last ng-scope"><a href="" ng-click="selectPage(totalPages, $event)" class="ng-binding">Last</a></li><!-- end ngIf: ::boundaryLinks -->
</ul><!-- end ngIf: vm.pageInfo.isShow -->
      </div><!-- end ngIf: !vm.error && !vm.loading -->

    </div>
  </div>
</div>
</div>
      </div>
    </div>

    <!-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script> -->
    <script src="scripts/vendor.js"></script>

    <script src="scripts/oliv-shared.js"></script>

    <script src="scripts/app.js"></script>
  
</body>
</html>
