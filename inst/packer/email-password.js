"use strict";(self.webpackChunkfirebase_r=self.webpackChunkfirebase_r||[]).push([[372],{429:(s,e,n)=>{n(235);var c=n(774),a=n(118);Shiny.addCustomMessageHandler("fireblaze-create-email-password",(function(s){const e=(0,a.v0)();(0,a.Xb)(e,s.email,s.password).then((function(e){(0,c.H9)("created_email_user",{success:!0,response:e},s.ns)})).catch((function(e){(0,c.H9)("created_email_user",{success:!1,response:e},s.ns)}))})),Shiny.addCustomMessageHandler("fireblaze-signin-email-password",(function(s){const e=(0,a.v0)();(0,a.e5)(e,s.email,s.password).then((function(e){(0,c.H9)("signed_up_user",{success:!0,response:e},s.ns)})).catch((function(e){(0,c.H9)("signed_up_user",{success:!1,response:e},s.ns)}))})),Shiny.addCustomMessageHandler("fireblaze-send-verification-email",(function(s){var e=(0,a.v0)().currentUser;(0,a.w$)(e).then((function(){(0,c.H9)("verification_email_sent",{success:!0,response:"successful"},s.ns)})).catch((function(e){(0,c.H9)("verification_email_sent",{success:!1,response:e},s.ns)}))})),Shiny.addCustomMessageHandler("fireblaze-reset-email",(function(s){const e=(0,a.v0)();(0,a.LS)(e,s.email).then((function(){(0,c.H9)("reset_email_sent",{success:!0,response:"successful"},s.ns)})).catch((function(e){(0,c.H9)("reset_email_sent",{success:!1,response:e},s.ns)}))})),Shiny.addCustomMessageHandler("fireblaze-re-authenticate",(function(s){var e=(0,a.v0)().currentUser,n=firebase.auth.EmailAuthProvider.credential(e.email,s.password);(0,a.aF)(e,n).then((function(){(0,c.H9)("re_authenticate",{success:!0,response:"successful"},s.ns)})).catch((function(e){(0,c.H9)("re_authenticate",{success:!1,response:e},s.ns)}))})),Shiny.addCustomMessageHandler("fireblaze-set-password",(function(s){var e=(0,a.v0)().currentUser;(0,a.gQ)(e,s.password).then((function(){(0,c.H9)("set_password",{success:!0,response:"successful"},s.ns)})).catch((function(e){(0,c.H9)("set_password",{success:!1,response:e},s.ns)}))}))}},s=>{s.O(0,[818,647],(()=>(429,s(s.s=429)))),s.O()}]);