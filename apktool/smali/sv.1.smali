.class Lsv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lsu;


# direct methods
.method constructor <init>(Lsu;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lsv;->a:Lsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lsv;->a:Lsu;

    iget-object v0, v0, Lsu;->a:Lss;

    invoke-static {v0}, Lss;->d(Lss;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
