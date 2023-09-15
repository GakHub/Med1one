<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<!DOCTYPE html>
<html lang="en">
<head>

<link rel="stylesheet"
	href="/MediOne/resources/dist/assets/css/ihealth.style.min.css">

<!--부트스트랩 자바스크립트 코드  -->
<link href="/MediOne/resources/js/bootstrap5/css/bootstrap.min.css" rel="stylesheet">
<style>
        html, body{
            width: 100%;
            height: 100%;
            padding: 0;
            margin: 0;
        }
        .container{
            display: flex;
            height: 100%;
            justify-content: center;
            align-items: center;
        }

        /* 배너 컨테이너 */
        .rollingbanner{
            position: relative;
            width: 320px;
            height: 32px;
            font-size: .875rem;
            letter-spacing: -1px;
            padding: 7px 15px;
            box-sizing: border-box;
            background-color: #f0f0f0;
            border-radius: 16px;
        }
        /* 타이틀 */
        .rollingbanner > .title{
            font-weight: bold;
            float: left;
            padding-right: 10px;
        }
        /* 롤링 배너 */
        .rollingbanner > .wrap{
            position: relative;
            width: auto;
            height: 100%;
            box-sizing: border-box;
            overflow: hidden;
        }        
        .rollingbanner ul{
            list-style: none;
        }
        .rollingbanner li{
            position: absolute;
            top: -36px;
            left: 0;
        }
        /* 이전, 현재, 다음 롤링 배너 표시 */
        .rollingbanner li.prev{
            top: 36px;
            transition: top 0.5s ease;
        }
        .rollingbanner li.current{
            top: 0;
            transition: top 0.5s ease;
        }
        .rollingbanner li.next{
            top: -36px;
        }
        .rollingbanner a{
            display: block;
            display: -webkit-box;
            text-decoration: none;
            -webkit-line-clamp: 1;
            -webkit-box-orient:vertical;
            overflow: hidden;
            color: #000;
        }
        /* 반대 방향으로 진행 */
        .rollingbanner.reverse li.prev{
            top: -36px;
            transition: top 0.5s ease;
        }
        .rollingbanner.reverse li.next{
            top: 36px;
        }
    </style>
    <script>
        var interval;
        document.addEventListener('DOMContentLoaded', ()=>{
            // 롤링 초기화
            interval = window.setInterval(rollingCallback, 2000);

            //마우스 호버시 롤링이 멈추었다 벗어나면 다시 롤링이 되도록 처리
            document.querySelector('.rollingbanner').addEventListener('mouseover',function(){
                window.clearInterval(interval);
            })
            document.querySelector('.rollingbanner').addEventListener('mouseout',function(){
                interval = window.setInterval(rollingCallback, 3000);
            })
        })
        
        function rollingCallback(){
            //.prev 클래스 삭제
            document.querySelector('.rollingbanner .prev').classList.remove('prev');

            //.current -> .prev
            let current = document.querySelector('.rollingbanner .current');
            current.classList.remove('current');
            current.classList.add('prev');

            //.next -> .current
            let next = document.querySelector('.rollingbanner .next');
            //다음 목록 요소가 널인지 체크
            if(next.nextElementSibling == null){
                document.querySelector('.rollingbanner ul li:first-child').classList.add('next');
            }else{
                //목록 처음 요소를 다음 요소로 선택
                next.nextElementSibling.classList.add('next');
            }
            next.classList.remove('next');
            next.classList.add('current');
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="rollingbanner">
            <div class="title" style="margin-left: 10px; margin-right: 10px;">MED1ONE Notice</div>
            <div class="wrap">
                <ul>
                    <li><a href="#">10월 예방접종 시행</a></li>
                    <li class="next"><a href="#">병원장 취임식 공지</a></li>
                    <li class="current"><a href="#">전염병 전담센터 개소</a></li>
                    <li><a href="#">직원 워크숍 공지</a></li>
                    <li class="prev"><a href="#">휴가철 복무점검 집중기간</a></li>
                </ul>
            </div>
        </div>
    </div>

</body>



</html>

</html>