#!/bin/sh

oc delete is/pythagoras-base is/pythagoras-s2i is/pythagoras
oc delete bc/pythagoras-base bc/pythagoras-s2i bc/pythagoras
oc delete dc/pythagoras svc/pythagoras route/pythagoras
