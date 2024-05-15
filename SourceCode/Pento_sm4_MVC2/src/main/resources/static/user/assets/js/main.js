const sliderList = document.querySelectorAll('.slider');
window.addEventListener('scroll', function(e) {
	const navTop = document.querySelector('.nav-top');
	if (window.scrollY > 0) {
		navTop.classList.add('scrollbar');
	} else {
		navTop.classList.remove('scrollbar');
	}
})
sliderList.forEach(function(slider) {
	let active = 0;
	slider.addEventListener('click', function(e) {
		const sliderWrapper = e.currentTarget.querySelector('.slider-wrapper');
		const sliderItem = sliderWrapper.querySelectorAll('.slider-item');
		const lengthItemInSlider = Math.floor(e.currentTarget.querySelector('.slider-content').offsetWidth / sliderItem[0].offsetWidth);
		if (e.target.closest('.btn-prev') && active != 0) {
			active = active - 1;
			console.log(active);
			if (active <= 0) {
				slider.querySelector('.btn-prev').style.display = 'none';
			}
			if (active <= sliderItem.length - 1) {
				slider.querySelector('.btn-next').style.display = 'block';
			}
			if (sliderItem[active]) {
				const checkLeft = sliderItem[active].offsetLeft + 'px';
				sliderWrapper.style.transform = 'translateX(-' + checkLeft + ')';
			}
		} else if (e.target.closest('.btn-next') && active < sliderItem.length - lengthItemInSlider) {
			active += 1;
			if (active > 0) {
				slider.querySelector('.btn-prev').style.display = 'block';
			}
			if (active >= sliderItem.length - lengthItemInSlider) {
				slider.querySelector('.btn-next').style.display = 'none';
			}
			if (sliderItem[active]) {
				const checkLeft = -sliderItem[active].offsetLeft + 'px';
				sliderWrapper.style.transform = 'translateX(' + checkLeft + ')';
			}
		}
	})
})

var name = "";
var comment = "";

function addComment() {
	var name = document.getElementById("name").value;
	var comment = document.getElementById("comment").value;

	var name2 = document.getElementById("name");

	if (name == "" || comment == "") {
		if (name == "") {
			document.getElementById("name").value = "Please enter your name";
			document.getElementById("name").style.color = "red";
		}
		if (comment == "") {
			document.getElementById("comment").value = "Please enter your comment";
			document.getElementById("comment").style.color = "red";
		}
	} else if (
		name == "Please enter your name" ||
		comment == "Please enter your comment"
	) {
		name2.style.color = "black";
	}



	else {
		var d = new Date($.now());
		var now = moment().format("d/M/Y h:mm:ss A");
		name.bold();
		var nameResult = $("<td class='nameTag'></td>").text(name + " says");
		var commentResult = $("<td></td>").text(now);

		var newRow = $("<tr></tr>").append(nameResult, commentResult);

		var comResult = $("<td colspan='2'></td>").text(comment);

		var commentRow = $("<tr></tr>").append(comResult);
		$("#resultBody").append(newRow, commentRow);
		nameTag.style.fontWeight = "bold";
	}




	// $("#commentTable").append("<tr><td class='dateTable'>"+d.toDateString()+"</td><td class='comName'>"+name+"</td></tr><tr><td class='comCom'>"+comment+"</td></tr>");

	// $("#commentArea").append("<div class='panel-heading'>"+name+"</div>");

	// var txt2 = $("<div class='panel-heading'></div>").text(name);
	//$("#resultsPanel").append("<tr><td>"+name+"</td><td style='text-align:'right''>"+comment+"</td></tr>");
	//var txt3 = $("<div class='panel-body'></div>").text(comment);
	//var txt4 = $("<div class='panel-footer'>Panel Footer</div>").text(d.toDateString())
	//$("#results").append(txt2, txt3, txt4);
}
