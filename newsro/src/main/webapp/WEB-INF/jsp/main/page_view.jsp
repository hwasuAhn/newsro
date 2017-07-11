<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="page_view_back">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
	
		<div class="carousel-inner">
			<div class="item active">
				<img src="/newsro/img/cover.jpg" alt="문화부 1면 기사">
			</div>
			
			<div class="item">
				<img src="/newsro/img/index.jpg" alt="정치부 1면 기사">
			</div>
			
			<div class="item">
				<img src="/newsro/img/content.jpg" alt="연예부 1면 기사">
			</div>
		</div>
	
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container">
		<h3 id="channel">채널 뉴스</h3>
	</div>
	<div>
		<div class="row">
			<div class="col-sm-3 col-md-4">
				<div class="thumbnail">
					<img src="..." alt="...">
					<div class="caption">
						<h3>문화기사제목</h3>
						<p><a href="#">기사내용미리보기</a></p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-md-4">
				<div class="thumbnail">
					<img src="..." alt="...">
					<div class="caption">
						<h3>정치기사제목</h3>
						<p><a href="#">기사내용미리보기</a></p>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-md-4">
				<div class="thumbnail">
					<img src="..." alt="...">
					<div class="caption">
						<h3>연예기사제목</h3>
						<p><a href="#">기사내용미리보기</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>