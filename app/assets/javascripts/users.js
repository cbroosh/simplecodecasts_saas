$(document).ready(function() {
    Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
    //Watch for a form submission
    $('#form-submit-btn').click(function(event){
        event.preventDefault();
        $('input[type=submit]').prop('disabled', true);
        var error = false;
        var ccNum = $('#card_number').val(),
            cvcNum = $('#card_code').val(),
            expMonth = $('#card_month').val(),
            expYear = $('#card_year').val(),
        
        if (!error) {
            // Get the stripe token
            Stripe.createToken({
                number: ccNum,
                cvc: cvcNum,
                month: expMonth,
                year: expYear
            }, StripeResponseHandler);
        }
         
         return false;
    }); // form submission
    
    function StripeResponseHandler(status, response) {
        // Get a reference to the form
        var f = $('#new_uer');
        
        //Get the token to the response
        var token = response.id;
        
        //add the token to the form
        f.append('<input type="hidden" name="user[stripe_card_token] value=""' + token + '/>');
        
        // Submit the form
        f.get(0)submit();
    }
})