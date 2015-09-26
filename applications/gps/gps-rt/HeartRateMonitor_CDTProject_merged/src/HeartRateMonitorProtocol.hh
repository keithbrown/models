
#ifndef HEARTRATEMONITORPROTOCOL_HH
#define HEARTRATEMONITORPROTOCOL_HH

#include "umlrtoutsignal.hh"
#include "umlrtprotocol.hh"
#include "umlrtsignal.hh"
struct UMLRTCommsPort;

namespace HeartRateMonitorProtocol
{
    class Base : public UMLRTProtocol
    {
    public:
        Base( const UMLRTCommsPort * & srcPort );
        UMLRTOutSignal registerListener() const;
        UMLRTOutSignal unregisterListener() const;
        UMLRTOutSignal updateHeartRate( int heartRate ) const;
    };
    enum SignalId
    {
        signal_registerListener = UMLRTSignal::FIRST_PROTOCOL_SIGNAL_ID,
        signal_unregisterListener,
        signal_updateHeartRate
    };
    class Conj : public UMLRTProtocol
    {
    public:
        Conj( const UMLRTCommsPort * & srcPort );
        UMLRTOutSignal registerListener() const;
        UMLRTOutSignal unregisterListener() const;
        UMLRTOutSignal updateHeartRate( int heartRate ) const;
    };
};

#endif

