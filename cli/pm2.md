```sh
# Install or upgrade PM2, then update the running PM2 daemon
npm install -g pm2@latest
pm2 update

# Start an app with an explicit name
pm2 start app.js --name app

# Start apps from an ecosystem file (alternative to starting app.js directly)
pm2 start ecosystem.config.js
pm2 start ecosystem.config.js --env production # Select env_production

# Inspect apps; use the name or PM2 ID shown by pm2 list
pm2 list
pm2 show app
pm2 logs app --lines 100
pm2 monit

# Manage an app; replace app with all to target every app
pm2 restart app
pm2 stop app
pm2 delete app # Stop and remove from PM2's process list
pm2 delete all # Stop and remove every app
```

To **refresh an app with new environment variables**, use `--update-env`.
A normal restart keeps the previously stored shell environment. See PM2's
[environment variable documentation](https://pm2.io/docs/runtime/best-practices/environment-variables/).

```sh
# Set new values and restart
NODE_ENV=production PORT=3001 pm2 restart app --update-env

# Or refresh from variables already exported in the current shell
pm2 restart app --update-env

# Apply changes to env / env_production in an ecosystem file
pm2 restart ecosystem.config.js --only app --env production

# Inspect the resulting environment (replace 0 with the ID from pm2 list)
pm2 env 0
```

For networked Node.js apps in [cluster mode](https://pm2.keymetrics.io/docs/usage/cluster-mode/),
`reload` replaces workers gradually; it can fall back to a restart if reloading times out.

```sh
pm2 start app.js --name app -i max # Alternative start: one worker per available CPU
PORT=3001 pm2 reload app --update-env
```

To [restore apps after reboot](https://pm2.keymetrics.io/docs/usage/startup/):

```sh
pm2 startup # Run the setup command it prints, if prompted
pm2 save    # Save the current app list and environment; repeat after changes
pm2 resurrect # Manually restore the last saved state
pm2 reload ecosystem.config.js --only btc-recorder --update-env # when you update env in js file
```

More commands: [PM2 quick start](https://pm2.keymetrics.io/docs/usage/quick-start/).
