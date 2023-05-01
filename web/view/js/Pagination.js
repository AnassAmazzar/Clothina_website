/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * Created on : 20 mai. 2022, 19:45
 * Paginiation for la page shop
 */
function getPageList(totalPage, page, maxLenght){
    function range(start, end){
        console.log(Array.from(Array(end - start + 1), (_, i) => i + start));
        return Array.from(Array(end - start + 1), (_, i) => i + start);
    }

    var sidewidth = maxLenght < 9 ? 1 : 2;
    var leftwidth = (maxLenght - sidewidth * 2 - 3) >> 1;
    var rightwidth = (maxLenght - sidewidth * 2 - 3) >> 1;
    
    if(totalPage <= maxLenght){
        return range(1, totalPage);
    }

    if(page <= maxLenght - sidewidth - 1 - rightwidth){
        alert("Anass");
        return range(1, maxLenght - sidewidth - 1).concat(0, range(totalPage - sidewidth + 1, totalPage));
    }

    if(page >= totalPage - sidewidth - 1 -rightwidth){
        alert("Amazzar");
        return range(1, sidewidth).concat(0,range(totalPage - sidewidth - 1 - rightwidth - leftwidth, totalPage));
    }
    
    return range(1, sidewidth).concat(0,range(page - leftwidth, page + rightwidth), 0, range(totalPage - sidewidth + 1, totalPage));
}
$(function(){
    var numberOfItems = $(".row .product-layouts").length;
    console.log("A"+numberOfItems);
    var limitPerPage = 6; //How many card items visible per page
    var totalPages = Math.ceil(numberOfItems /limitPerPage);
    console.log("N"+totalPages);
    var paginationSize = 5; //How many page elements visible in the pagination
    var currentPage;
    function showPage(wichPage){
        if(wichPage < 1 || wichPage > totalPages) return false;
        console.log(wichPage < 1 || wichPage > totalPages);
        currentPage = wichPage;
        console.log("S"+currentPage);

        $(".row .product-layouts").hide().slice((currentPage - 1) * limitPerPage, currentPage * limitPerPage).show();
        $(".pagination li").slice(1, -1).remove();

        getPageList(totalPages, currentPage, paginationSize).forEach(item => {
            $("<li>").addClass("page-item").addClass(item ? "current-page" : "dots")
                .toggleClass("active", item === currentPage).append($("<a>").addClass("page-link")
                    .attr({href:"javascript:void(0)"}).text(item || "...")).insertBefore(".next-page");
        });
        $(".previous-page").toggleClass("disable", currentPage === 1);
        $(".next-page").toggleClass("disable", currentPage === totalPages);
        return true;
    } 
    $(".pagination").append(
        $("<li>").addClass("page-item").addClass("previous-page").append($("<a>").addClass("page-link").attr({href:"javascript:void(0)"}).text("«")),
            $("<li>").addClass("page-item").addClass("next-page").append($("<a>").addClass("page-link").attr({href:"javascript:void(0)"}).text("»"))
    );
    $(".row").show();
    showPage(1);
    $(document).on("click", ".pagination li.current-page:not(.active)", function(){
        return showPage(+$(this).text())
    });
    $(".next-page").on("click", function(){
        return showPage(currentPage + 1);
    });
    $(".previous-page").on("click", function(){
        return showPage(currentPage - 1);
    });
});

