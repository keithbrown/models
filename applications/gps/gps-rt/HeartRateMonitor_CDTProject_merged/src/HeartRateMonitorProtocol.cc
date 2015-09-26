
#include "HeartRateMonitorProtocol.hh"

#include "umlrtobjectclass.hh"
#include "umlrtoutsignal.hh"
struct UMLRTCommsPort;

HeartRateMonitorProtocol::Base::Base( const UMLRTCommsPort * & srcPort )
: UMLRTProtocol( srcPort )
{
}

UMLRTOutSignal HeartRateMonitorProtocol::Base::registerListener() const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_registerListener, srcPort, 0 );
    return signal;
}

UMLRTOutSignal HeartRateMonitorProtocol::Base::unregisterListener() const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_unregisterListener, srcPort, 0 );
    return signal;
}

UMLRTOutSignal HeartRateMonitorProtocol::Base::updateHeartRate( int heartRate ) const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_updateHeartRate, srcPort, UMLRTType_int->sizeDecoded );
    signal.encode( UMLRTType_int, &heartRate );
    return signal;
}

HeartRateMonitorProtocol::Conj::Conj( const UMLRTCommsPort * & srcPort )
: UMLRTProtocol( srcPort )
{
}

UMLRTOutSignal HeartRateMonitorProtocol::Conj::registerListener() const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_registerListener, srcPort, 0 );
    return signal;
}

UMLRTOutSignal HeartRateMonitorProtocol::Conj::unregisterListener() const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_unregisterListener, srcPort, 0 );
    return signal;
}

UMLRTOutSignal HeartRateMonitorProtocol::Conj::updateHeartRate( int heartRate ) const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_updateHeartRate, srcPort, UMLRTType_int->sizeDecoded );
    signal.encode( UMLRTType_int, &heartRate );
    return signal;
}


