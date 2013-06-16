App = {};
(function(){

  App.insertQR = function( text ) {

    var fg = '#2B2B2B',
        bg = 'white';

    var el = $('#qr-code'),
        size =  el.width() - 20;
      
    el.qrcode( {foreground: fg, background: bg, width: size, height: size, text: text } );	

  };

})( );
