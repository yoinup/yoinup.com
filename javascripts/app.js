(function($){  
  $(function(){
    $(document).foundationMediaQueryViewer();
    
    
    
    
    
    $(document).foundationNavigation();
    
    
    
    
    
      
      $(document).foundationTabs();
      
    
    
    
    $("#featured").orbit();
    
    
    // UNCOMMENT THE LINE YOU WANT BELOW IF YOU WANT IE8 SUPPORT AND ARE USING .block-grids
    // $('.block-grid.two-up>li:nth-child(2n+1)').css({clear: 'left'});
    // $('.block-grid.three-up>li:nth-child(3n+1)').css({clear: 'left'});
    // $('.block-grid.four-up>li:nth-child(4n+1)').css({clear: 'left'});
    // $('.block-grid.five-up>li:nth-child(5n+1)').css({clear: 'left'});
  });
  
})(jQuery);
