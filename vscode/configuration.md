# Debug Configuration Example

## node.js

```js
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "node",
            "request": "launch",
            "name": "debug_my_node",
            "program": "${workspaceFolder}/app.js",
            "cwd": "${workspaceFolder}", //optional
            "env": {
                "ENV": "development"
            }
        }
    ]
}
```

## python

```js
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Debug_Current_File",
            "type": "python",
            "request": "launch",
            "program": "${file}",
            "cwd": "${workspaceFolder}", //optional
            "console": "integratedTerminal"
        },
        {
            "name": "Debug_Django",
            "django": true,
            "type": "python",
            "request": "launch",
            "program": "${workspaceFolder}/manage.py",
            "console": "integratedTerminal",
            "args": [
                "runserver",
                "3000",
                "--noreload",
                //"--nothreading"
            ],
            "env": {
                "DJANGO_SETTINGS_MODULE": "xxxx.settings",
                "PYTHONUNBUFFERED": "1"
            }
        }
    ]
}
```