/**
 * 
 */
 
 function count_check(obj) { 
    var chkBox = document.getElementsByName("chk");  //name값 chk를 불러옴
    var chkCnt = 0 ; // chkCnt변수에 초기값을 0으로 설정

    for(var i =0; i < chkBox.length; i++){ //반복문으로 초기값, 조건식 증감식 설정
        if(chkBox[i].checked){ // 조건문으로 chkBox 가 checked 되었을 경우
            chkCnt++;           // 1씩증가
        }
    }
    if(chkCnt > 3){ // 조건문으로 chkCnt가 2개 보다 클경우
        alert("3개까지 선택할수 있습니다.") // alert를 띄움
        obj.checked = false;        //false를 주어 alert를 띄운뒤에 check가 되지 않도록 설정
        return false;
    }
    
}