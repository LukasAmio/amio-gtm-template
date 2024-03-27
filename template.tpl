___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "categories": ["CHAT"],
  "version": 1,
  "securityGroups": [],
  "displayName": "Amio chat widget",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAA1CAYAAADh5qNwAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAA3XAAAN1wFCKJt4AAAAB3RJTUUH4gEDCxg3jn5EwAAAA8FJREFUaN7tmk9sVFUUh79zh7ZD1JoQKJKIyIKEGAwLNjSRzrMgRGUBMfwrLnBTwZShJKhh1y3GxLbToCExKZqIII2xG2Qg00dKYaELNkJigjFGwJCQkiFgO7x5xwXYTs10Zjq9d97COavJy5tz73ff757z7m8G6lGPetTj/xhS7Rd7PF0wrtxSocXyjFL9I5KcTwpTNZQvAYYh66scsqvH0wWRQAGEIadsQ6nQMq68HhlU6hKXgd+tgxn2RAYFoihnrO/0kHcOt+rCiKDAiH0JIjQHcd6MDKrXl2sKv1jn0uolaCxN4LSDdrO1c5M+HxmUxvgGUMtQ8XjAtsigUhm5ifKT9SpIdRI01ibgoGAIbDq0UZdGBhXLcxrIW+aKkWdHZFC9o3IH8K1LsIoqaCzLxUXPau1q05VRQg0Bk7axjLA7MqheX+4rnHPQs96NDApA3Lw2vZL0dE1kUFllGCUbZcGwDjXoywTCsAMF7AWVSKCeyuWUg6wruhOsjwxqkZIW5a71Y1aFh0cnUK78C5TdlfgXFRkcH3j6bExYh/IiQpNR7oaGG6mM3CzlX4hwwDLWknuGdiBdpl/OHt0JbQ2Fo8AbQLzIyl3H8GVWOT7oy8R/X3GTHr8BL1tu8IN9vrw3Z6gjm/WZ3CQnEDoqlMUfoaFjYETGCi8nE3oM4SPLEszGcrzw2VX5u+I9tX+ztuRyjFUM9GRpXjIhmYMJ3VML/yKM81bFhaJznTY05jgDrK1isEYRTnZ76rn2L8o14hlQTc0cBRLzGK8hD1/t8zTu2L94u5R/MQV1cIMuEeWIhY28vBm6XPsXTQHby0KZGLuA5ywN2unavyhloU1BhbDV4pirkm26yqV/gbBxNv/CFMhmtdXNLNP58vCtC/9CA3aWKxRLrS6kYdm/n4/78pcT/0KKS9AUNLVHlsvuQ9f+hcD6Yv6FKbjjtuWNPCNfuJDvgIla+Bem4BA2anGwyXjAz4UXUuckq/BjLfyL6ScV8r1F6Z3/ZEwe1Mq/6GrTV4tC9V3iosJVK+PEOFZL/8LEZhYMU7gLVPgQCOa5cl/3Z+TKrP6F4QcHh8eOQv9ixrvfwIiMCRyeR/prjQ2lD4YufvwGViTbaZ316NHnywDC+8DjOSYezTWy5dO0PCx102Lhggv/QsNpCRb1KPpH5IRCG8qVCvLdR/h4EbR/kZayk+3xJVA466BnTf3/oqyP1u2pp8p2FTYAy56+9P4J/AoMPw4Y+vyyjM9lAoc8fU2x2kKePC3DllRG0tSjHvWwGv8AQGk8hkJpL5wAAAAASUVORK5CYII\u003d"
  },
  "description": "Amio chat bot deployment script. All parameters are documented - https://docs.amio.io/docs/amio-chat-api-methods",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "channelId",
    "displayName": "Amio channel ID",
    "simpleValueType": true,
    "valueHint": "123456789"
  },
  {
    "type": "TEXT",
    "name": "logoUrl",
    "displayName": "Logo URL",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "theme",
    "displayName": "Theme",
    "simpleValueType": true
  },
  {
    "type": "RADIO",
    "name": "storageType",
    "displayName": "Storage type",
    "radioItems": [
      {
        "value": "local",
        "displayValue": "Local"
      },
      {
        "value": "session",
        "displayValue": "Session"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "CHECKBOX",
    "name": "wideButton",
    "checkboxText": "Use wide widget",
    "simpleValueType": true
  },
  {
    "type": "PARAM_TABLE",
    "name": "paramsTable",
    "displayName": "Additional Parameters",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "key",
          "displayName": "Name",
          "simpleValueType": true
        },
        "isUnique": true
      },
      {
        "param": {
          "type": "TEXT",
          "name": "value",
          "displayName": "Value",
          "simpleValueType": true
        },
        "isUnique": false
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// const log = require('logToConsole');
const injectScript = require('injectScript');
const queryPermission = require('queryPermission');
const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');

// log('data =', data);
// log('params = ', data.paramsTable);

const url = 'https://chat-widget.amio.io/static/amio-webchat-loader.min.js';


const onSuccess = () => {
  const amioWebchat = copyFromWindow('amioWebchat');

  if (typeof amioWebchat === 'undefined') {
    data.gtmOnFailure();
  }
  let amioConfig = {};
  if (data.paramsTable) {
    for (let i = 0; i < data.paramsTable.length; i++) {
    amioConfig[data.paramsTable[i].key] = data.paramsTable[i].value;
  }}
amioConfig.channelId = data.channelId;
amioConfig.theme = data.theme;
amioConfig.wideButton = data.wideButton;
amioConfig.storageType = data.storageType;
amioConfig.logoUrl = data.logoUrl;
  amioWebchat.init(amioConfig);
  data.gtmOnSuccess();
};

const onFailure = () => {
  //log('Amio: Script load failed.');
  data.gtmOnFailure();
};
if (queryPermission('inject_script', url)) {
  injectScript(url, onSuccess, onFailure);
} else {
  //log('Amio: Script load failed due to permissions mismatch.');
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://chat-widget.amio.io/static/amio-webchat-loader.min.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "amioWebchat"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 27. 3. 2024 20:50:15


