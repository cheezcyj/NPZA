/*서버 측에서 url_tb 테이블을 seq 열을 기준으로 내림차순 정렬하여 가장 첫 번째 데이터의 URL을 반환*/
var desiredURL = '';

window.addEventListener('load', fetchDesiredURL);

function fetchDesiredURL() {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/api/desiredURL?userId=' + userId, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = JSON.parse(xhr.responseText);
            desiredURL = response.url;
        }
    };
    xhr.send();
}