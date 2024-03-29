<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Recipe 등록</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../resources/assets/RE-SURFY.png" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../resources/css/registerRecipeStyle.css" rel="stylesheet" />
    <link href="../resources/css/registerRecipeGrid.css" rel="stylesheet"/>
	
	<!-- Font-->
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">


  </head>
  <body>
    <form action="/recipe/registerRecipe.do" id="registerRecipe" onsubmit="return validateForm();" method="post" enctype="multipart/form-data">
      <div class="register_recipe_wrapper">
        <div class="register_wrapper">
          <div class="register_title" style="color:black;">레시피 등록</div>
          <div class="wrapper_box pad_l_60">
            <div id="MainImageBox" class="cont_pic2">
              <input type="hidden" name="main_image" id="main_image" value="">
              <input type="hidden" name="new_main_image" id="new_main_image" value="">
              <input type="hidden" name="del_main_photo" id="del_main_image" value="">
              <div style="position:absolute;left:-3000px">
                <input type="file" name="stepImage" id="mainImage" file_gubun="main" accept="jpeg,png,gif" 
                style="display:;width:100px;height:280px;font-size:0px;" text="">
              </div>
              <div id="divMainImageContainer">
                <img id="mainImageHolder" onclick="browseMainFile()" src="../resources/assets/uploadimage.png" 
                style="width:100%; height:280px; margin-top:30px; resize:none; cursor:pointer;">
              </div>
            </div>

            <div class="wrapper_line">
              <p class="wrapper_title1" style="color:black;">레시피 제목</p>
              <input type="text" name="recipeName" id="recipeName" value="<c:out value='${recipeName}'/>" class="form-control" 
              placeholder="예) 10분 완성 김치찌개" style="width:620px; margin-top:13px; display:inline-block;" control-id="ControlID-30">              
            </div>
            <div class="wrapper_line pad_b_25">
              <p class="wrapper_title1" style="color:black;">요리소개</p>
              <textarea name="recipeDescription" id="recipeDescription" class="form-control recipeDescription" placeholder="예) 최대한 빠르고 간편하게 만드는 김치찌개입니다." style="height:100px; width:620px; resize:none;"><c:out value="${recipeDescription}"/></textarea>
            </div>
            <div class="wrapper_line">
              <p class="wrapper_title1" style="color:black;">카테고리</p>
              <select class="form-select" id="foodType" name="foodType" control-id="ControlID-11">
                <option value="">유형별</option>
		   	    <option value="한식" <c:if test="${foodType == '한식'}}">selected</c:if>>한식</option>
			    <option value="중국" <c:if test="${foodType == '중국'}">selected</c:if>>중국</option>
			    <option value="일본" <c:if test="${foodType == '일본'}">selected</c:if>>일본</option>
			    <option value="서양" <c:if test="${foodType == '서양'}">selected</c:if>>서양</option>
			    <option value="이탈리아" <c:if test="${foodType == '이탈리아'}">selected</c:if>>이탈리아</option>
			    <option value="동남아시아" <c:if test="${foodType == '동남아시아'}">selected</c:if>>동남아시아</option>
			    <option value="퓨전" <c:if test="${foodType == '퓨전'}">selected</c:if>>퓨전</option>
              </select>
              <select class="form-select" id="person" name="person" control-id="ControlID-11">
                <option value="" >인원</option>
                <option value="1인분"<c:if test="${person == '1인분'}">selected</c:if>>1인분</option>
                <option value="2인분"<c:if test="${person == '2인분'}">selected</c:if>>2인분</option>
                <option value="3인분"<c:if test="${person == '3인분'}">selected</c:if>>3인분</option>
                <option value="4인분"<c:if test="${person == '4인분'}">selected</c:if>>4인분</option>
                <option value="5인분이상"<c:if test="${person == '5인분이상'}">selected</c:if>>5인분이상</option>
              </select>
              <span class="pad_l_30"> </span>
              <select class="form-select" id="time" name="time" control-id="ControlID-11">
                <option value="" >시간</option>
                <option value="5분"<c:if test="${time == '5분'}">selected</c:if>>5분</option>
                <option value="10분"<c:if test="${time == '10분'}">selected</c:if>>10분</option>
                <option value="15분"<c:if test="${time == '15분'}">selected</c:if>>15분</option>
                <option value="20분"<c:if test="${time == '20분'}">selected</c:if>>20분</option>
                <option value="30분"<c:if test="${time == '30분'}">selected</c:if>>30분</option>
                <option value="40분"<c:if test="${time == '40분'}">selected</c:if>>40분</option>
                <option value="50분"<c:if test="${time == '50분'}">selected</c:if>>50분</option>
                <option value="60분"<c:if test="${time == '60분'}">selected</c:if>>60분</option>
                <option value="90분"<c:if test="${time == '90분'}">selected</c:if>>90분</option>
                <option value="120분"<c:if test="${time == '120분'}">selected</c:if>>120분</option>
                <option value="180분"<c:if test="${time == '180분'}">selected</c:if>>180분</option>
              </select>
              <span class="pad_l_30"> </span>
              <select class="form-select" id="difficulty" name="difficulty" control-id="ControlID-11">
                <option value="" >난이도</option>
                <option value="초보환영"<c:if test="${difficulty == '초보환영'}">selected</c:if>>초보환영</option>
                <option value="보통"<c:if test="${difficulty == '보통'}">selected</c:if>>보통</option>
                <option value="어려움"<c:if test="${difficulty == '어려움'}">selected</c:if>>어려움</option>
              </select>
            </div>
          </div>

		<!-- 재료 등록 박스 -->
          <div class="wrapper_box pad_l_60">
            <div class="mag_b_25 ui-sortable" id="divIngredientGroupArea">
              <div class="wrapper_line" style="height:0px; display:flex">
                <p class="wrapper_title_ingredient" style="color:black; margin-top: 5px;">재료</p>
              </div>
              <div class="wrapper_ingredient" style="margin-left: 145px; display: inline-flex;">
                <ul id="ingredientAra_1" class="ingredientGroup">
                  <select class="form-select" id="ingreType" name="ingreType" control-id="ControlID-11" style="justify-content: flex-end;">
                    <option value="">재료별</option>
                    <option value="주재료"<c:if test="${ingreType == '주재료'}">selected</c:if>>주재료</option>
                    <option value="부재료"<c:if test="${ingreType == '부재료'}">selected</c:if>>부재료</option>
                    <option value="양념"<c:if test="${ingreType == '양념'}">selected</c:if>>양념</option>
                  </select>		
                  <li id="liIngredient_1_1">
                    <input type="text" name="ingreName" id="ingreName_1_1" value="<c:out value='${ingreName_1_1}'/>"
                    class="addIngredient_name" style="width:275px; border-radius: 0.375rem" placeholder="예) 돼지고기" control-id="ControlID-19">
                    <input type="text" name="ingreMeasure" id="ingreMeasure_1_1" value="<c:out value='${ingreMeasure_1_1}'/>"
                    class="addIngredient_amount" style="width:180px; border-radius: 0.375rem" placeholder="예) 300g" control-id="ControlID-20">
                    <button type="button" class="btn btn-warning deleteIngredientBtn">X</button>
                  </li>
                </ul>
              </div>
            </div>
            <div class="btn_add" style="padding: 0 0 20px 400px; witdth:800px">
              <button type="button" onclick="addIngredient(1)" class="btn btn-primary" id="addIngredient" control-id="ControlID-44" style="width: 100px; height: 50px; letter-spacing: .3rem; font-size:20px;">
                <span class="glyphicon glypicon-plus-sign"></span>추가
              </button>
            </div>
          </div><!--재료 등록 finish-->

			<!-- 과정 등록 박스 -->
          <div class="wrapper_box2 pad_l_60">
            <input type="file" name="file" id="multifile_1" file_gubun="step" style="display:none;" multiple/>
            <p class="wrapper_title2" style="color:black;">요리순서</p>
            <div id="stepArea" class="stepArea">            
              <div id="stepItem_1" class="step" style="margin-bottom:50px">
                <p id="stepNum_1" name="stepNo" class="stepNo" data-original-title="" title=""  style="width: 100px; display: inline-block; font-size: 20px; font-weight: bold; vertical-align: top; color: #black; margin-left: 40px;">Step 1</p>
                <div id="wrapper_stepDescription_1" style="display:inline-block">
                  <textarea name="stepDescription" id="stepDescription_1" class="form-control stepDescription" placeholder="예) 김치를 적당한 크기로 썰어 팬에 볶아주세요." style="height:200px; width:410px; resize:none;" control-id="ControlID-29"><c:out value='${stepDescription_STEP}'/></textarea>
                </div>
                <div id="stepUpload_1" style="display:inline-block">
                  <input type="hidden" name="step_no" id="step_no_1" value="" control-id="ControlID-30">
                  <input type="hidden" name="step_image" id="step_image_1" value="">
                  <input type="hidden" name="new_step_image" id="new_step_image_1" value="">
                  <input type="hidden" name="del_step_image" id="del_step_image_1" value="">
                  <div style="position:absolute;left:-3000px">
                    <input type="file" name="stepImage" id="q_step_file_1" file_gubun="step" accept="jpeg,png,gif" style="display:none;width:0px;height:0px;font-size:0px;" text="" control-id="ControlID-31">
                  </div>
				  <div id="stepImageBox_1" is_over="0" onclick="browseStepFile(1)" style="cursor:pointer">
					<img id="stepImageHolder_1" src="../resources/assets/uploadimage.png" style="width:200px; height:200px; fill:200px" class="bi bi-file-image" viewBox="0 0 16 16"">
			      </div>
                </div>
                <div id="tipItem_1" class="tip">
                  <p class="tip_title" style="color:black; margin-top:10px;">팁</p>
                  <textarea name="tip" id="tip_text_1" class="form-control tipDescription" placeholder="조리 과정에 특별한 팁이 있다면 공유해주세요. 없다면 생략 가능합니다." 
                  style="height:50px; width:620px; resize:none;"><c:out value='${tip_text_1}'/></textarea>          
				  <button type="button" class="btn btn-warning deleteStepBtn" onclick="deleteStep(1)">X</button>
                </div>    
              </div>
            </div> <!--step regi box-->

            <!-- step template -->
            <div id="stepTemplate" style="display:none;">
              <div id="stepItem_STEP" class="step" style="margin-bottom:50px">
                <p id="stepNum_STEP" class="stepNo" style="width: 100px; display: inline-block; font-size: 20px; font-weight: bold; vertical-align: top; color: black; margin-left: 40px;">Step STEP</p>
                <div id="wrapper_stepDescription_STEP" style="display:inline-block">
                  <textarea name="stepDescription" id="stepDescription_STEP" class="form-control stepDescription" placeholder="과정을 적어주세요." 
                  style="height:200px; width:410px; resize:none;"><c:out value='${stepDescription_STEP}'/></textarea>
                </div>
                <div id="stepUpload_STEP" style="display:inline-block">
                  <input type="hidden" name="stepNo" id="step_no_STEP" value="" control-id="ControlID-30">
                  <input type="hidden" name="step_image" id="step_image_STEP" value="">
                  <input type="hidden" name="new_step_image" id="new_step_image_STEP" value="">
                  <input type="hidden" name="del_step_image" id="del_step_image_STEP" value="">
                  <div style="position:absolute;left:-3000px">
                    <input type="file" name="stepImage" id="q_step_file_STEP" file_gubun="step" accept="jpeg,png,gif" 
                    style="display:none;width:0px;height:0px;font-size:0px;" text="" control-id="ControlID-31">
                  </div>
				  <div id="stepImageBox_STEP" is_over="0" onclick="browseStepFile(STEP)" style="cursor:pointer">
					<img id="stepImageHolder_STEP" src="../resources/assets/uploadimage.png" style="width:200px; height:200px; fill:200px" class="bi bi-file-image" viewBox="0 0 16 16"">
			      </div>
                </div>
                <div id="tipItem_STEP" class="tip">
              		<p class="tip_title"  style="color:black; margin-top:10px;">팁</p>
                
	                <textarea name="tip" id="tip_text_STEP" class="form-control tipDescription" placeholder="팁을 공유해주세요. 없다면 생략 가능합니다." 
	                style="height:50px; width:620px; resize:none;"><c:out value='${tip_text_STEP}'/></textarea> 
					<button type="button" class="btn btn-warning deleteStepBtn" onclick="deleteStep(STEP)" id="deleteStepBtn_STEP">X</button>
                </div>
              </div>
            </div><!--step template finish-->
            <div class="btn_add mag_b_25" style="padding:0 0 20px 380px; width:820px;">
              <button type="button" onclick="addStep()" class="btn btn-primary" control-id="ControlID-83" style="background-color:#e95420; width: 150px; height: 50px; font-size:20px; letter-spacing: 6px;">
                <span class="glyphicon glyphicon-plus-sign"></span>순서추가
              </button>              
            </div>
          </div><!--과정 등록 박스 finish-->          
        </div><!--레시피 등록 finish box-->

        <div class="regi_btm">
          <button type="submit" onclick="save()" class="btn-lg btn-primary" id="save" control-id="ControlID-44" style="width: 150px; letter-spacing: 8px; font-size:25px;">저장</button>
  		  <button type="button" class="btn-lg btn-warning" id="cancel" control-id="ControlID-49" style="width: 150px; font-size:25px; letter-spacing: 8px;" onclick="showModal()">취소</button>
        </div><!--save and cancel-->        
      </div><!--container finish-->
      
      <!-- 취소 모달 -->
      	<div class="modal" tabindex="-1" id="cancelModal">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title"></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true"></span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <p>레시피 등록을 취소하시겠습니까?</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary" onclick="confirmCancel()">확인</button>
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
		      </div>
		    </div>
		  </div>
		</div>
    </form>
    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- 	버튼 기능 구현 코드 작성중-->
    <script type="text/javascript" src="../resources/js/registerRecipeScripts.js">
    
    </script>
  </body>
  <%@include file="../includes/footer.jsp"%>

</html>