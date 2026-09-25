# PM2 essentials

Replace `app` with your app name. Run `pm2 list` to see app names.

## Restart

```sh
pm2 restart app
```

## Update environment variables

```sh
# Set new values and restart
PORT=3001 pm2 restart app --update-env

# After editing env_production in ecosystem.config.js
pm2 restart ecosystem.config.js --only app --env production
```

A normal restart keeps the previously stored shell environment. Use
`--update-env` to apply values from the current shell.

## Add an app

```sh
pm2 start app.js --name app

# Or add an app defined in an ecosystem file
pm2 start ecosystem.config.js --only app --env production
```

## View logs

```sh
pm2 logs app --lines 100
```

Press `Ctrl+C` to stop watching logs; the app keeps running.
