<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- modal -->
<div class="modal fade" id="accountBookModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">${item.seq }
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div>
					<input type="hidden" name="" value="${sessName}">
					<div>지출금액</div>
					<input type="text" class="form-control d-inline" name="useMoney" id="useMoney" style="width:30%; font-size: 25px; font-weight: bold;" onkeyup="inputNumberFormat(this)" <c:if test="${not empty item.useMoney }">value="${item.useMoney  }"</c:if>>원
				</div>
				<div class="modal-body-section d-flex">
					<span class="tit">분류</span>
					<input type="radio" class="btn-check" name="options" id="option1" autocomplete="off" checked>
					<label class="btn btn" for="option1">지출</label>
					
					<input type="radio" class="btn-check" name="options" id="option3" autocomplete="off">
					<label class="btn btn" for="option3">수입</label>
					
					<input type="radio" class="btn-check" name="options" id="option4" autocomplete="off">
					<label class="btn btn" for="option4">이체</label>
					
				<!-- <button type="button" class="btn optionBtn type" value="지출" id="type1">지출</button>
					<button type="button" class="btn optionBtn type" value="수입" id="type2">수입</button>
					<button type="button" class="btn optionBtn type" value="이체" id="type3">이체</button> -->
					<input type="hidden" id="type" name="type">
				</div>
				<div class="modal-body-section d-flex">
					<span class="tit">카테고리</span>
					<select class="form-select" name="category">
						<option>미분류</option>
						<c:forEach items="${listCodecategory}" var="listcategory" varStatus="statuscategory">
							<option value="${listcategory.ccSeq} ">
								<c:if test="${list.category eq listcategory.ccSeq}">selected</c:if>${listcategory.ccName}
							</option>
						</c:forEach>
					</select>
				</div>
				<div class="modal-body-section d-flex">
					<div class="tit">거래처</div>
					<input type="text" class="form-control" id="" name="client" placeholder="입력하세요" style="width : 50%;">
				</div>
				<div class="modal-body-section d-flex">
					<span class="tit">결제수단</span>
					<input type="button" class="btn optionBtn" id="pay1" value="카드">
					<input type="button" class="btn optionBtn" id="pay2" value="현금">
					<!-- 
					<input type="radio" class="btn-check" name="options" id="option2" autocomplete="off">
					<label class="btn btn" for="option2">카드</label>
					<input type="radio" class="btn-check" name="options" id="option7" autocomplete="off">
					<label class="btn btn" for="option7">현금</label>
					 -->
					<!-- 
					<input type="radio" class="btn-check" name="options-outlined" id="success-outlined" autocomplete="off">
					<label class="btn btn-outline-success" for="success-outlined">카드</label>
					
					<input type="radio" class="btn-check" name="options-outlined" id="danger-outlined" autocomplete="off">
					<label class="btn btn-outline-danger" for="danger-outlined">현금</label>
					 -->
					<input type="hidden" id="payment" name="methodOfPayment">
				</div>
				<div class="modal-body-section d-flex">
					<span class="tit">날짜</span>
					<input type="text" class="form-control" id="date" name="date" placeholder="입력하세요" style="width : 40%;">
				</div>
				<div class="modal-body-section d-flex">
					<div class="tit">메모</div>
					<input type="text" class="form-control" id="" name="memo" placeholder="입력하세요" style="width : 50%;">
				</div>
				<button id="saveBtn" class="btn">저장</button>
			</div>
		</div>
	</div>
</div>
<!-- modal -->