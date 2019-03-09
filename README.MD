# Notes

```bash
  touch `date +%F-%I-%M-%S`-filanme.sql
  # Recommend
  touch `date +%s`-filanme.sql
```

```bash
  # Backup with postgres
  pg_dump -U postgres edwork > ./postgresql/`date +%s`_backup_edwork.sql
```
