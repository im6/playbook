# Ubuntu version

check status
```
who # check system user log
whoami
exit
```

group management
```
cat /etc/group # chcek current groups
groupadd -g <GID> <GROUPNAME>
groupdel <GROUPNAME>
groupmod -n <NewGroupName> <CurrentGroupName> 
```

user management
```
cat /etc/passwd # check current users
useradd -d /home/<userName> <userName> -g <GroupName> -m # create user and user's directory automatically
userdel -r mcduser0 # remove user and user's directory
usermod -g <userGroup> <userName>
```

switch account
```
su <username>
```

user password
```

```
