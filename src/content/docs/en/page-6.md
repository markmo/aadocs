---
title: "Authentication"
description: "Authentication and Authorisation Flows"
---

## API Authentication

Authentication between the client and API uses JSON Web Tokens (JWT). JWT is an open standard 
(RFC 7519) that defines a compact and self-contained way for securely transmitting information 
between parties as a JSON object. This information can be verified and trusted because it is 
digitally signed. JWTs are signed using a secret.

Although JWTs can be encrypted to also provide secrecy between parties, we will focus on signed 
tokens. Signed tokens can verify the integrity of the claims contained within it, while encrypted 
tokens hide those claims from other parties.

Once the user is logged in, each subsequent request will include the JWT, allowing the user to 
access routes, services, and resources that are permitted with that token.

![Authentication Flow](/assets/auth-flow.png)