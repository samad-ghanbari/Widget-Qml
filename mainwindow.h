#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui {
class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
public slots:
    int getNumber(int n){ return 2*n;}
    QString getVersion(){return "1.0.0";}

private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
