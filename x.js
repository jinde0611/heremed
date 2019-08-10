var nodemailer = require('nodemailer');
var transporter = nodemailer.createTransport({
    host: "smtp.office365.com", // hostname
    secureConnection: true, // TLS requires secureConnection to be false
    port: 587, // port for secure SMTP
    tls: {
       ciphers:'SSLv3'
    },
    auth: {
        user: 'nishant.jinde@here.com',
        pass: 'Nish@nt0611',
        secure:true,
        type:'OAuth2',
        accessToken:'OAQABAAAAAACEfexXxjamQb3OeGQ4Gugv2vyOa-hl0LCGkIS6brsO72vgNQ1KRNvlHbc9rpjE0O8P3144uKvfkGgBYsGm0CBKTSACZm_Pj9MzYB3Ntz8Nk1ZF5gvHx3qWNDqEXFw7WSTZlpft4beVUz_JTz7oIJ7rp_HmHS5n9vsGgCZQlCsHDd8naCjjHhjvszrCMRic7EfAvZcaO4GcG5qcGzZXmDajr5RZpGMOhQ64b2qWA1K8xmbQooeTrIW0TqYOTQRL1WEEzCkj_hwc6euFKB1Mt40miWxh1iUuU7GIFSJRd3aeaWaGWLwvvTxXBwYa_jEMAdGOZko9m78Y9uxkuXVnSEWG1r_80WIuP-X6n_rmpRckH8g828uZGDswdmSDpHmtNEn_7tKTdw9envlkdUw8X2GvWjVsWnMgWSaEY9gdi1mQPDGzf11uJUDSQ2SP3xVZ8ReHchhXPoeDklMTKPDQezv-6DGMv7ziJMXADlUnRUV4bikXP9cXRDXFflIZjUmntSRxHDdx5Iubs3asFs81qyxYBNa9J4AqFbbNnHnZcfQXT3pPVDVFdCK0vBBBFvyM_R8di6vDrnSg_ObdlvwzlOKXK91eFNBmDd-L8_hx7TLiiosQ2ggO6ggev3aCTajYDmCEd3LW_ZSi-dAWeJqNGGuEQPcR76vHZqPeeqdagHg4v2o6SJF2UMwy4h1ChhuZ5xmcfB8899Gb-E4LLJiXZcBAOq78s2Di6_Oo3jEM8P_pXDL--euP1W8Y_I6wReM7SrBC0b9IAFNaHSneb6yrcaruzKN1hytdGEC7Bhplzb6tRXokWKOm1M-vJ-BcKK653tG8YGiOKzoYiJ-d_Z5krnI5YqLQZkZXp8OujWicqcamH8v0KBawpScmVUSEhX7sCPkgAA'
    }
});

var mailOptions = {
  from: 'nishant.jinde@here.com',
  to: 'nishant.jinde@here.com',
  subject: 'Sending Email using Node.js',
  text: 'That was easy!'
};

transporter.sendMail(mailOptions, function(error, info){
  if (error) {
    console.log(error);
  } else {
    console.log('Email sent: ' + info.response);
  }
});