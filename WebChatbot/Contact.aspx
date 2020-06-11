<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebChatbot.Contact" %>

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>bot chat digital ware</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="style-bot.css">
    <script crossorigin="anonymous" src="https://cdn.botframework.com/botframework-webchat/latest/webchat.js"></script>
</head>
<body>
<!-- partial:index.partial.html -->
<div class="floating-chat">
    <i style="font-size: 22px;" class="fa fa-comments" aria-hidden="true"></i>
    <div class="chat">
        <div class="header">
            <span class="title">
               ¿Qué tienes en mente?
            </span>
            <button>
                <i class="fa fa-times" aria-hidden="true"></i>
            </button>
        </div>
        <div id="webchat" role="main" style="overflow: auto;">

        </div>
        <div class="footer">
            <div style="display: none" class="text-box" contenteditable="true" disabled="true"></div>
        </div>
    </div>
</div>
    <script>
            window.WebChat.renderWebChat(
                {
                    locale: 'es-ES',
                    overrideLocalizedStrings: (strings, language) => ({
                        ...strings,
                        TEXT_INPUT_PLACEHOLDER: 'Que estas pensando?'
                    }),
                    directLine: window.WebChat.createDirectLine({
                        secret: '',
                        token: '',
                        domain: 'http://localhost:3000/directline',
                        webSocket: false // defaults to true
                    }),
                    userID: 'YOUR_USER_ID',
                    username: 'Web Chat User',
                    locale: 'en-US',
                    botAvatarInitials: 'WC',
                    userAvatarInitials: 'WW',
                    styleOptions: {
                        rootHeight: '100%',
                        rootWidth: '100%',
                        bubbleBackground: '#FFBFB1',
                        bubbleBorderRadius: 5,
                        sendBoxBackground: 'Blue',
                        bubbleFromUserBackground: 'Yellow',
                        backgroundColor: 'Green',
                        bubbleTextColor: 'White',
                    }
                },
                document.getElementById('webchat')
            );

        </script>
<!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
    <script src="script-bot.js"></script>
</body>
</html>