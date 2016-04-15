<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>


<style>
.form-data-sucesso {
  display: none;  
}
</style>

<br />

		<!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-md-8 form-data">
                <h3>Nos envie uma mensagem</h3>
                <form name="sentMessage" id="contactForm" novalidate id="sentMessage">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Nome completo:</label>
                            <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>N&uacute;mero de telefone:</label>
                            <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>E-mail:</label>
                            <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Mensagem:</label>
                            <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>

            <div class="col-md-8 form-data-sucesso">
                <h1>Enviado com sucesso!</h1>
            </div>
        </div>
        <!-- /.row -->




<!-- Script to Activate the Carousel -->
<script>
    $('.btn.btn-primary').click(function(event) {

        var url = '<%=properties.get("btnLigacao", "")%>'

        event.preventDefault();
        $('.form-data').hide();

        if (url == '') {
           $('.form-data-sucesso').show();
        } else {
			window.location = url;
        }

    });
</script>