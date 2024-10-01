---
title: "Media over QUIC Relay Peering Protocol"
abbrev: moq-relay-peering
docname: draft-evens-moq-relay-peering-latest
date: {DATE}
category: std

ipr: trust200902
area:  "Web and Internet Transport"
submissionType: IETF
workgroup: "Media Over QUIC"
keyword:
 - media over quic
venue:
  group: "Media Over QUIC"
  type: "Working Group"
  mail: "moq@ietf.org"
  arch: "https://mailarchive.ietf.org/arch/browse/moq/"
  github: "timevens/moq-relay-peering"
  latest: "https://timevens.github.io/moq-relay-peering/draft-evens-moq-relay-peering.html"

stand_alone: yes
smart_quotes: no
pi: [toc, sortrefs, symrefs, docmapping]

author:
  -
    ins: T. Evens
    name: Tim Evens
    organization: Cisco
    email: tievens@cisco.com

normative:
  QUIC: RFC9000
  MOQT: I-D.ietf-moq-transport

informative:

--- abstract

This document defines the {{MOQT}} relay peering protocol (MOQRP) that relays use to
interconnect between each other. Relay interconnections enable
forwarding of published objects to one or  more subscribers that span
one or more relays. The protocol defines a highly scalable and efficent communication
between the relays to support low latency real-time publishers and subscribers over
a distributed relay network.

--- middle

# Introduction

# Conventions and Definition

{::boilerplate bcp14-tagged}

Commonly used terms in this document are described below.

Client:
: The party initiating a Transport Session.

Server:
: The party accepting an incoming Transport Session.

Endpoint:
: A Client or Server.

Publisher:
: An endpoint that handles subscriptions by sending requested Objects from the requested track.

Subscriber:
: An endpoint that subscribes to and receives tracks.

Original Publisher:
: The initial publisher of a given track.

End Subscriber:
: A subscriber that initiates a subscription and does not send the data on to other subscribers.

Relay:
: An entity that is both a Publisher and a Subscriber, but not the Original
Publisher or End Subscriber.

Upstream:
: In the direction of the Original Publisher

Downstream:
: In the direction of the End Subscriber(s)

Transport Session:
: A raw QUIC connection or a WebTransport session.

Congestion:
: Packet loss and queuing caused by degraded or overloaded networks.


# Protocol

~~~
MOQT Control Message {
  Message Type (i),
  Message Length (i),
  Message Payload (..),
}
~~~
{: #moqt-control-message align="center" title="MOQT Message"}
