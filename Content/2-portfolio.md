# Portfolio

## Projektübersicht

### Projektleitung und Produktentwicklung

- [EDEKA - Observability PoC](#-edeka-obbservability-Poc)    Integration der Gebit Kassenlösung für Edeka
- [Blugento Produktentwicklung](#-produktentwicklung-blugento) Docker, Marketing Automation, AWS
- [AIDA board portal](#-AIDA-board-portal) Gästeportal für AIDA Cruises

### Software  Development

- [CoffeeBin](#-coffeebin) Datenvisualisierung und Analytics _(IoT)_
- [Digitaler Agenturkicker](#-Digitaler-Agenturkicker) IoT Multichannel _(IoT)_
- [EDEKA - Kassensoftware Integration](#-edeka-pos-integration) Integration der Gebit Kassenlösung für Edeka _(Windows App)_
- [Flughafen Leipzig/Halle Nachbarschaftsportal](#-lej-nachbarn-app) App development _(iOS & Android)_
- [Tap!Tap!](#-tap-tap) App development _(iOS)_

### Consulting, Schulungen und DevOps

- [Universal Music - Shop-Manager](#-universal-music--shop-manager) 
  Schulungen, Docker, CI CD, Cloud (AWS, Azure)

---

## Projektdetails

### [[↑](#projektübersicht)] Observability EDEKA PoC

_2023_

EDEKA möchte mehr Transparenz in ihre Prozesse bringen. Viele Microservices
laufen in einem Orchester ohne Dirigenten. Mit der Observability-Plattform
wird es möglich sein, die Prozesse zu überwachen und bei Bedarf zu
intervenieren. In diesem PoC galt es den Nachweis der Machbarkeit zu liefern,
dass OpenTelemetry im SAP Kontext eingesetzt werden kann.

**Meine Aufgaben** waren die Team- und Projektleitung. Ich habe die
Software-Architektur entwickelt und die Installation der Software auf den
Demonstrations-Servern durchgeführt.

Die **Technologie-Highlights** sind *OpenTelemetry* zur Überwachung der
Prozesse, *Jaeger* zur Visualisierung der Traces und *Prometheus* zur
Überwachung der Systeme und die visualisierung der Traces, Metriken und Logs
in [DataDog][datadog].

| Technologische Highlights          |                |
|------------------------------------|----------------|
| [OpenTelemetry][opentelemetry]     | Im SAP Kontext |
| [Jaeger][jaeger]                   | Tracing        |
| [Prometheus][prometheus]           | Monitoring     |
| [DataDog][datadog]                 | Observability  |


### [[↑](#projektübersicht)] AIDA board portal

_2013-2016_

![AIDA Bordportal](Media/Portfolio/aida-bordportal.png)

Das AIDA Bordportal ist auf AIDA Schiffen installiert und dient Gästen und
Besatzung zur Orientierung und zur Buchung von Ausflügen und Restaurantplätzen.
Es ist optimiert für TV, Mobile und spezielle Displays in den Gängen.

**Meine Aufgaben** waren die Team- und Projektleitung, die Installation der
Software auf dem Schiff und die Erstellung eines Demosystems.

Die **Technologie-Highlights** sind die Unterstützung von *Low-Power-Hardware*
(LG TV), *Kartenleser* zum Einloggen in Benutzerkonten, Bedienung über
*Fernbedienung*, Erstellung und Aktualisierung einer Chrome-Erweiterung aus der
Ferne, *verschiedene APIs* auf dem Schiff (Restaurants, Ausflüge,
Terminbuchungen …)

| Technologische Highlights          |                                    |
|------------------------------------|------------------------------------|
| [Docker-Registry][docker-registry] | auf GitLab                         |
| [Docker Compose][docker-compose]   | für verschiedene Environments      |
| [AWS ECS][aws-ecs]                 | für das Container-Deployment       |
| [AWS EC2][aws-ec2]                 | für das Container-Deployment       |
| [AWS EFS][aws-efs]                 | zum verteilten Speichern von Daten |
| [AWS RDS][aws-rds]                 | zum Datenbank-Deployment           |
| [Concourse CI][concourse-ci]       | als Pipeline tool für CI/CD        |

| Links |                                                         |
|-------|---------------------------------------------------------|
| Demo  | <https://nr:reiseberater@reiseberater2go.herokuapp.com> |


### [[↑](#projektübersicht)] EDEKA POS Integration

_2023_ - `now()`

Der Kunde beauftragte die Gebit mit der Integrations der Kassenlösung in die
EDEKA Infrastruktur und beauftragte Thinkport als technischen Dienstleister.

Die **Technologie-Highlights** sind **Flutter** für die App-Entwicklung,
**Java** für die Backend-Entwicklung und **Docker** für die Bereitstellung der
Anwendung. **OpenTelemetry** wird für die Observability eingesetzt.

| Technologische Highlights      |                              |
|--------------------------------|------------------------------|
| [Flutter][flutter]             | Frontend-Entwicklung         |
| [Java][java]                   | Backend-Entwicklung          |
| [Kubernetes][kubernetes]       | Bereitstellung der Anwendung |
| [OpenTelemetry][opentelemetry] | Observability                |

| Links             |                                                                        |
|-------------------|------------------------------------------------------------------------|
| Website           | <https://taptap.andrelademann.de>                                      |
| Repository        | <https://github.com/vergissberlin/tap-tap->                            |
| Google Play Store | <https://play.google.com/store/apps/details?id=com.netresearch.portal> |
| Apple AppStore    | <https://apps.apple.com/de/app/lej-nachbarn/id1620877158?uo=4>         |

### [[↑](#projektübersicht)] LEJ Nachbarn App

_2022_

![LEJ Nachbarn App](Media/Portfolio/lejn-store-ios.png)

Der Kunde, Flughafen Leipzig/Halle suchte eine Möglichkeit mit seinen direkten
Nachbarn auf digitalem Weg ins Gespräch zu kommen. Mein Part war die Umsetzung
der App-Variante. **React-Native** zeigt hier seine Stärken, da die App für
iOS und Android entwickelt werden konnte und somit die Kosten für die
Entwicklung deutlich gesenkt werden konnten.

Durch das Senden von Push-Benachrichtigungen können die Nutzer über neue
Nachrichten informiert werden. Die App ist in der Lage, die Benachrichtigungen
auch im Hintergrund zu empfangen und zu verarbeiten.

Die **Technologie-Highlights** Ich habe *React-Native* mit *Expo* (https://expo.dev/)
verwendet, um die App zu erstellen. Ich habe viel über die Richtlinien/
Anforderungen des *Google Play Store* gelernt.

![LEJN Pipeline](Media/Portfolio/lejn-pipeline.png)

Teil des Projektes war die Erstellung einer CI/CD-Pipeline. Die Pipeline habe
ich mit GitLab CI erstellt. Sie enthält die folgenden Schritte:

1. Build der App
2. Testen der App
3. Deployment der App auf Expo _(Bereitstellung einer Review-App bei Merge-Requests)_
4. Deployment der App auf Google Play Store
5. Deployment der App auf Apple App Store

| Technologische Highlights              |                                  |
|----------------------------------------|----------------------------------|
| [React Native][react-native]           | auf GitLab                       |
| [Expo][expo]                           | Zur Appentwicklung im Browser    |
| [Google Play Store][google-play-store] | Veröffentlichung der Anwendung   |
| Push Benachrichtigungen                | Push Benachrichtigungen mit Expo |

| Links             |                                                                        |
|-------------------|------------------------------------------------------------------------|
| Website           | <https://taptap.andrelademann.de>                                      |
| Repository        | <https://github.com/vergissberlin/tap-tap->                            |
| Google Play Store | <https://play.google.com/store/apps/details?id=com.netresearch.portal> |
| Apple AppStore    | <https://apps.apple.com/de/app/lej-nachbarn/id1620877158?uo=4>         |


### [[↑](#projektübersicht)] Tap! Tap!

_2020_

![Tap! Tap! Play store](Media/Portfolio/tap-tap.png)

Dies ist ein **React-Native** Game-Experiment. Ein Bildschirm - zwei Spieler.
Mit jedem Klick auf den Button wird der Button größer und der Button des
Gegners kleiner. Man gewinnt, wenn der eigene Button die gesamte Spielfläche
abdeckt. Inspiriert wurde ich von einem Spiel, das wir in der Schule auf
unseren Taschenrechnern gespielt haben.

Die **Technologie-Highlights** Ich habe *React-Native* mit [Expo][expo]
verwendet, um die App zu erstellen. Ich habe viel über die
Richtlinien/Anforderungen des *Google Play Store* gelernt.

| Technologische Highlights              |                                |
|----------------------------------------|--------------------------------|
| [React Native][react-native]           | auf GitLab                     |
| [Expo][expo]                           | Zur Appentwicklung im Browser  |
| [Google Play Store][google-play-store] | Veröffentlichung der Anwendung |

| Links             |                                                                          |
|-------------------|--------------------------------------------------------------------------|
| Website           | <https://taptap.andrelademann.de>                                        |
| Repository        | <https://github.com/vergissberlin/tap-tap->                              |
| Google Play Store | <https://play.google.com/store/apps/details?id=com.vergissberlin.taptap> |

### [[↑](#projektübersicht)] CoffeeBin

_2020_

![CoffeeBin NodeRED](Media/Portfolio/coffee-bin-nodered.png)

Big-Data-Applikation zur Erfassung von Kaffee-Trink-Daten bei
[Netresearch DTT GmbH][netresearch]. Die Daten werden in einer zeitbasierten
Datenbank gespeichert.
Das Interessante daran ist nun, welche Schlüsse man aus den zunächst banal
erscheinenden Daten ziehen kann. Setzt man die Daten in Beziehung zu anderen
Daten wie der Anzahl der Tickets im JIRA, lässt sich so eventuell ein
Stresslevel ablesen. Mit Fachgebiet der Datenanalyse beschäftige ich mich
hauptsächlich in meiner Freizeit.

**Technologische Highlights** neben der Entwicklung in C++ zur Erfassung der
Daten, kam hier Node-RED zur Steuerung und verarbeitung der Datenströme zum
Einsatz. Die Speicherung erfolgt in der Zeit basierenden Datenbank 
von InfluxDB und die Visualisierung mit Grafana.

![CoffeeBin](Media/Portfolio/coffee-bin.png)

| Technologische Highlights         |                                                                                                      |
|-----------------------------------|------------------------------------------------------------------------------------------------------|
| [Tasmota][tasmota]                | C++ zur Erfassung der Daten                                                                          |
| [NodeRED][node-red]               | zur Steuerung von Events und versenden von Nachrichten an Twitter und den Firmeninternen Slack-Chat. |
| [InfluxDB][influxdb]              | Zeit basierende Speicherung der Daten                                                                |
| [Grafana][grafana]                | zur Visualisierung der Daten                                                                         |


### [[↑](#projektübersicht)] Digitaler Agenturkicker

_2015 - 2016_

![](Media/Portfolio/piball-header.png)
![](Media/Portfolio/piball.png)

Die Digitalisierung des Agentur-Kickers ist ein *Multichannel-Experiment*
welches im Rahmen meiner Research & Development Zeit bei der [Netresearch DTT
GmbH][netresearch] entstanden ist. Ziel war es möglichst viele Ausspielkanäle
mit einer zentralen Datenbasis zu bedienen. Zusätzliche Herausforderungen waren
hier die Hardwarekomponenten und das Flottenmanagement mit Belana für
dockerized Anwendungen. Im Rahmen der Entwicklung habe ich mich mit vielen
neuen Technologien auseinandergesetzt was mir große Freude bereitete. Es steht
daher auch für mich ein großes Interesse an der Entwicklung von Software und
Hardware.

| Technologische Highlights                                 |                                                                                                                                                                    |
|-----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Docker][docker]                                          | auf einer ARM Architektur                                                                                                                                          |
| [Vue.JS][vue.js]                                          | Mobile App mit der Vuetify Komponenten-Bibliothek                                                                                                                  |
| [Python][python]                                          | zum Ansprechen von Hardware-Komponenten                                                                                                                            |
| [Google Firebase][google-firebase]                        | zur Authentifizierung und Nutzung der Echtzeit-Datenbank                                                                                                           |
| [Google Chrome Extension][google-chrome-extension-piball] | zur Anzeige der Ergebnisse direkt im Browser und zum Auslösen von Notifications. Verfügbar im [Chrome Web Store][google-chrome-extension-piball].                  |
| [Ionic Framework][ionic-framework]                        | zur Erstellung einer Native App fpr iOS und Android                                                                                                                |
| [Belana.io][belana.io]                                    | zum Flottenmanagement der dockerisierten Anwendung und Node-RED zum Steuern von Events und versenden von Nachrichten an Twitter und den Firmeninternen Slack-Chat. |
| [NodeRED][node-red]                                       | zur Steuerung von Events und versenden von Nachrichten an Twitter und den Firmeninternen Slack-Chat.                                                               |

[google-chrome-extension-piball]: https://chrome.google.com/webstore/detail/piball/ejahllipniehmpdjkfjmhhadeeamdebh?authuser=1&gclid=Cj0KCQiAqvaNBhDLARIsAH1Pq53cYjAiaEGVxuANGCggDpF6nSdgcij-7fla8VVSs3KuESNg-YiemskaAgZREALw_wcB

| Links                                                     |                                                      |
|-----------------------------------------------------------|------------------------------------------------------|
| Präsentation                                              | <https://prezi.com/khpva--2yv25/foosball/?present=1> |
| GitHub Repository                                         | <https://github.com/vergissberlin/piball>            |
| Web interface                                             | <https://vivid-fire-2266.web.app>                    |


### [[↑](#projektübersicht)] Produktentwicklung Blugento

_2017 - 2018_

![blugento](Media/Portfolio/blugento.png)

Blugento ist ein Verwaltungssystem für Docker-Anwendungen. Hiermit ist es
möglich auf entfernten Server Docker-Images starten, konfigurieren, anpassen,
starten, aktualisieren und stoppen. Durch die eingebaute Web-Console ist es auch
Möglich das System aus der Ferne zu debuggen.

Environments können durch die Nutzer verwaltet werden. Die Server können in der
Cloud, oder Lokal auf dem Server gestartet werden. Durch ein
Benutzer-Rechte-System ist es möglich auch Kunden Zugriff auf die Anwendung zu
gewähren. Durch _blugento_ können im Handumdrehen Demo-Instanzen
hochgefahren werden, aber auch Systeme für den Live-Betrieb verwalten.

| Technologische Highlights                                 |                                                                         |
|-----------------------------------------------------------|-------------------------------------------------------------------------|
| [Docker-API][docker]                                      | Zum Starten und Stoppen von Anwendungen auf Remote-Systemen             |
| [Docker-Registry][docker-registry]                        | auf selbst-gehostetem GitLab                                            |
| [Docker Compose][docker-compose]                          | für verschiedene Environments                                           |
| [Concourse CI][concourse-ci]                              | als Pipeline tool für CI/CD                                             |
| [GraphQL][graphql]                                        | Mit dem [Apollo.JS][apollojs] zur Bereitstellung nutzer-basierter Daten |
| [Travis CI][travis-ci]                                    | als Pipeline tool für CI/CD                                             |
| [Vue.JS][vue.js]                                          | Mobile App mit der Vuetify Komponenten-Bibliothek                       |
| [Autopilot Marketing Automation][autopilot]               | Marketing-Automatisation und Nutzerunterstützung                        |
| [Hubspot Marketing Automation][hubspot]                   | Marketing Funnel für Beta-Tester                                        |
| [Sphinx][sphinx]                                          | Bereitstellung einer Dokumentation                                      |

| Links                                                     |                            |
|-----------------------------------------------------------|----------------------------|
| Website                                                   | <https://blugento.com>     |
| App                                                       | <https://app.blugento.com> |


### [[↑](#projektübersicht)] Universal Music – Shop Manager

_2018-2019_

![Universal Music](Media/Portfolio/umg.png)

Mit der entwickelten Software ist es dem Kunden UMG möglich umgehend neue
Magento Webshops für seine Klienten aufzusetzen und zu gestalten, ohne dazu
auf Entwickler beauftragen zu müssen.

Innerhalb eines internationalen Teams (Australien, USA, Indien) war ich für das
Release-Management des von mir verwalteten Docker-Basis-Images für die
[UMG][umg] Shops verantwortlich. Ich gab dem Kunden und dem Team eine eigene
Version des Images mit einer eigenen Softwarebasis. Diese Software basiert auf
der [Docker Compose][docker-compose] und wurde mit einer eigenen Docker-Registry
verwaltet. Die stetige Weiterentwicklung des dabei verwendeten Docker-Images
gehörte zu meinen Aufgaben.

Ich gab dem Team und dem Kunden Schulungen zur Verwendung der entwickelten
Software.

| Technologische Highlights          |                                    |
|------------------------------------|------------------------------------|
| [Docker-Registry][docker-registry] | auf GitLab                         |
| [Docker Compose][docker-compose]   | für verschiedene Environments      |
| [AWS ECS][aws-ecs]                 | für das Container-Deployment       |
| [AWS EC2][aws-ec2]                 | für das Container-Deployment       |
| [AWS EFS][aws-efs]                 | zum verteilten Speichern von Daten |
| [AWS RDS][aws-rds]                 | zum Datenbank-Deployment           |
| [Concourse CI][concourse-ci]       | als Pipeline tool für CI/CD        |

| Links                              |                                  |
|------------------------------------|----------------------------------|
| Universal Music Group              | <https://www.universalmusic.com> |


[apollojs]: https://www.apollographql.com/
[autopilot]: https://www.autopilot.io/
[aws-ec2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-types.html
[aws-ecs]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_Basics.html
[aws-efs]: https://docs.aws.amazon.com/efs/latest/ug/
[aws-rds]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html
[aws-s3]: https://aws.amazon.com/s3/
[bash]: https://www.gnu.org/software/bash/
[belana.io]: https://belana.io/
[canva]: https://www.canva.com/
[ci-cd]: https://en.wikipedia.org/wiki/CI/CD
[concourse-ci]: https://docs.concourse.ci/
[datadog]: https://www.datadoghq.com/
[docker-compose]: https://docs.docker.com/compose/
[docker-registry]: https://docs.docker.com/registry/
[docker]: https://www.docker.com/
[edge-side-includes]: https://en.wikipedia.org/wiki/Edge_Side_Includes
[expo]: https://expo.dev/
[fastify]: https://www.fastify.io/
[flutter]: https://flutter.dev/
[google-chrome-extension-dynamo]: https://chrome.google.com/webstore/search/dynamo
[google-chrome-extension]: https://chrome.google.com/webstore/detail/google-chrome-extension-for-t/nmmhkkegccagdldgiimedpiccmgmiednk
[google-firebase]: https://firebase.google.com/
[google-play-store]: https://play.google.com/store/apps/details?id=com.example.taptap
[grafana]: https://grafana.com/
[graphql]: https://graphql.org/
[heroku]: https://dashboard.heroku.com/apps/camfight-app
[hubspot]: https://www.hubspot.com/
[influxdb]: https://influxdb.com/
[ionic-framework]: https://ionicframework.com/
[jaeger]: https://www.jaegertracing.io/
[javascript]: https://www.javascript.com/
[java]: https://www.java.com/
[jmeter]: https://jmeter.apache.org/
[jspdf]: https://parall.ax/products/jspdf
[kubernetes]: https://kubernetes.io/
[netresearch]: https://www.netresearch.de/
[node-red]: https://nodered.org/
[openapi]: https://swagger.io/specification/
[opentelemetry]: https://opentelemetry.io/
[postman]: https://www.getpostman.com/
[prometheus]: https://prometheus.io/
[python]: https://www.python.org/
[react-native]: https://reactnative.dev/
[sphinx]: https://www.sphinx-doc.org/
[tasmota]: https://tasmota.github.io/docs/
[travis-ci]: https://travis-ci.org/
[typo3]: https://typo3.org/
[umg]: https://www.universalmusic.com/
[varnish]: https://www.varnish-cache.org/
[vue.js]: https://vuejs.org/
[vuetify]: https://vuetifyjs.com/
