import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class stopwatch extends StatefulWidget {
  const stopwatch({Key? key}) : super(key: key);

  @override
  State<stopwatch> createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  final _isHours = true;
  final _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _stopWatchTimer.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini Stopwatch'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int>(
                stream: _stopWatchTimer.rawTime,
                initialData: _stopWatchTimer.rawTime.value,
                builder: (context, snapshot) {
                  final value = snapshot.data;
                  final displayTime =
                      StopWatchTimer.getDisplayTime(value, hours: _isHours);
                  return Text(
                    displayTime,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Start'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    setState(() {
                      _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                    });
                  },
                ),
                SizedBox(
                  width: 45,
                ),
                ElevatedButton(
                  child: Text('Stop'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Lap'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                setState(() {
                  _stopWatchTimer.onExecute.add(StopWatchExecute.lap);
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Reset'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              padding: EdgeInsets.all(8),
              child: StreamBuilder<List<StopWatchRecord>>(
                stream: _stopWatchTimer.records,
                initialData: _stopWatchTimer.records.value,
                builder: (context, snapshot) {
                  final value = snapshot.data;
                  if (value == null) {
                    return Container();
                  }
                  return ListView.builder(
                      itemCount: value.length,
                      controller: _scrollController,
                      itemBuilder: (context, index) {
                        final data = value[index];
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                '${index + 1} - ${data.displayTime}',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Divider(
                              height: 2,
                            ),
                          ],
                        );
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
