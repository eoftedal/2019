---
layout: talks
title: When business critical systems have critical design errors, the story of a disclosure
scheduled: "15:00"
length: 45
speakers:
- name: Hans-Petter Fjeld
  image: HansPetterFjeld.jpg
  bio: An Information Security Engineer at Basefarm and an all-round blue-team member who also does penetration testing.
- name: Bjarne Rasmussen
  image: BjarneRasmussen.jpg
  bio: CTO EMEA Enterprise at Broadcom and was VP, EMEA Customer Success and Escalations Management at CA previously.
---

Laughing over the twitter-feed of Tabletop Scenarios (@badthingsdaily), we get interrupted by an engineer who wants to present a gloomy discovery, and possible entry for the Twitter account. 

Only this is a business-critical system we have installed in our production environment. Looking closely at the inner workings of the monitoring system, the engineer discovered that it was mostly based on a message bus. The secret key and passphrase needed to communicate on it was hard coded into several components publicly available, and that all of the servers we had in our monitoring system were vulnerable to unauthenticated command execution from all of the other servers in the monitoring system. 

This is the story of CVE-2018-13821, lessons learned during vulnerability disclosure, and the path to mitigating a central design error.
