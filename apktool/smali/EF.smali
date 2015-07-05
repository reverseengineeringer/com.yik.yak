.class LEF;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:LEE;


# direct methods
.method constructor <init>(LEE;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, LEF;->a:LEE;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, LEF;->a:LEE;

    invoke-static {v0}, LEE;->a(LEE;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
