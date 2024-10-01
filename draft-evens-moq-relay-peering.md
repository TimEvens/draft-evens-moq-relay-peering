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
  WebTransport: I-D.ietf-webtrans-http3

informative:

--- abstract

This document defines the relay peering protocol that is used with
MoQT to provide relay to relay peering.

--- middle


# Introduction
