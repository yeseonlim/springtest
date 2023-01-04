
//댓글등록
async function postCommentToServer(cmtData){
    try {
        const url = '/post';
        const config = {
            method: 'post',
            headers: {
                'content-type':'application/json; charset=utf-8'
            },
            body: JSON.stringify(cmtData)
        };
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    } catch (error) {
        console.log(error);
    }
}

document.getElementById('cmtPostBtn').addEventListener('click', ()=>{
    const cmtText = document.getElementById('cmtText').value;
    console.log(cmtText);

    if(cmtText==null || cmtText==''){
        alert("이 게시글에 첫 댓글을 남겨주세요~");
        cmtText.focus();
        return false;
    }else{
        let cmtData={
            bno:bnoVal,
            writer: document.getElementById('cmtWriter').innerText,
            content: cmtText
        };
        console.log(cmtData);
        postCommentToServer(cmtData).then(result=>{
            if(result>0){
                alert("댓글이 등록되었습니다.");
            }
            //화면에 출력
            getCommentList(cmtData.bno);
        });
    }
});

//댓글 리스트
async function spreadCommentFromServer(bno){
    console.log(bno);
    try {
        const resp = await fetch('/'+bno);
        const result = await resp.json();
        return result;
    } catch (error) {
        console.log(error);
    }
}

function getCommentList(bno){
    spreadCommentFromServer(bno).then(result =>{
        console.log(result);
        const ul = document.getElementById('cmtListArea');
        if(result.length>0){
            ul.innerHTML="";
            for(let cvo of result){
                let li=`<li data-cno="${cvo.cno}" class="list-group-item d-flex justify-content-between align-items-start">`;
                li+=`<div class="ms-2 me-auto"><div class="fw-bold">${cvo.writer }</div>`;
                li+=`<textarea rows="1" cols="200" class="form-control" id="cmtTextMod" style="border:none">${cvo.content}</textarea></div>`;
                li+=`<span class="badge bg-dark rounded-pill">${cvo.mod_at}</span>`;
                li+=`<button class="btn btn-sm btn-outline-warning mod" type="button">✔️</button>`;
                li+=`<button class="btn btn-sm btn-outline-danger del" type="button">✖️</button>`;
                li+=`</li>`;
                ul.innerHTML+=li;
            }
        }else{
            let li = `<li class="list-group-item d-flex justify-content-between align-items-start">COMMENT LIST iS EMPTY </li>`;
            ul.innerHTML+=li;
        }
    })
}

//댓글 수정
async function editCommentToServer(cmtDataMod){
    try {
        const url='/'+cmtDataMod.cno;
        const config={
            method:'put',
            headers:{
                'content-type': 'application/json; charset=utf-8'
            },
            body: JSON.stringify(cmtDataMod)
        };
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    } catch (error) {
        console.log(error);
    }
}

document.addEventListener('click', (e)=>{
    if(e.target.classList.contains('mod')){
        //수정
        let li = e.target.closest('li');
        let cnoVal = li.dataset.cno;
        let textContent = li.querySelector('#cmtTextMod').value;
        let cmtDataMod={
            cno:cnoVal,
            content:textContent
        };
        console.log(cmtDataMod);
        editCommentToServer(cmtDataMod).then(result=>{
            if(result>0){
                alert("댓글이 수정되었습니다.");
            }
            getCommentList(bnoVal);
        });
        //댓글삭제
    }else if(e.target.classList.contains('del')){
        //삭제
        let li = e.target.closest('li');
        let cnoVal = li.dataset.cno;
        deleteComment(cnoVal).then(result=>{
            if(result>0){
                alert("댓글이 삭제되었습니다.");
            }
            getCommentList(bnoVal);
        });
    }

})

async function deleteComment(cno) {
    try {
        const url='/'+cno;
        const config={
            method:'delete'
        };
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    } catch (error) {
        console.log(error);
    }
}

