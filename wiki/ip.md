### Elastic IP vs Static IP
Elastic IP addresses are static IP addresses designed for dynamic cloud computing. 
Unlike traditional static IP addresses, however, 
Elastic IP addresses allow you to mask instance or availability zone failures 
by **programmatically remapping** your public IP addresses to any instance associated with your account. 
Rather than waiting on a data technician to reconfigure or replace your host,
or waiting for DNS to propagate to all of your customers, 
Amazon EC2 enables you to engineer around problems with your instance or software by programmatically remapping your Elastic IP address to a replacement instance.


### thread pool vs thread spawning
Thread pool threads are much cheaper than a regular Thread, they pool the system resources required for threads. But they have a number of limitations that may make them unfit:

You cannot abort a threadpool thread
There is no easy way to detect that a threadpool completed, no Thread.Join()
There is no easy way to marshal exceptions from a threadpool thread
You cannot display any kind of UI on a threadpool thread beyond a message box
A threadpool thread should not run longer than a few seconds
A threadpool thread should not block for a long time
The latter two constraints are a side-effect of the threadpool scheduler, it tries to limit the number of active threads to the number of cores your CPU has available. This can cause long delays if you schedule many long running threads that block often.

Many other threadpool implementations have similar constraints, give or take.
