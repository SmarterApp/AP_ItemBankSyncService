#!/usr/bin/env bash

kops export kubecfg --state @kubecfgState@ --name @kubecfgName@

kubectl set image deployment/ap-item-bank-sync-service-deployment ap-item-bank-sync-service=@dockerTagBase@/ap-item-bank-sync-service:@version@