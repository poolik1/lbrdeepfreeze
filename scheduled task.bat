@echo off
schtasks /create /tn "OpenWebpageTask" /tr "start microsoft-edge.exe https://engage.redbridge.gov.uk/valentines-lido" /sc onlogon /ru %USERNAME%
