<%@ Page  Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebChatbot._Default" %>

<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Web Chat</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script crossorigin="anonymous" src="https://cdn.botframework.com/botframework-webchat/latest/webchat.js"></script>
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            margin: 0;
        }

        #webchat {
            height: 100%;
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="webchat" role="main" style="height: 100vh;"></div>
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
                        rootWidth: '50%',
                        bubbleBackground: '#FFBFB1',
                        bubbleBorderRadius: 5,
                        //sendBoxBackground: 'Blue',
                        bubbleFromUserBackground: 'Yellow',
                        //backgroundColor: 'Green',
                        bubbleTextColor: 'White',
                    }
                },
                document.getElementById('webchat')
            );

        </script>
    </form>
</body>
</html>

