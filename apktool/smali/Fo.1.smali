.class public LFo;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/PreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, LFo;->a:Lcom/yik/yak/ui/fragment/PreferenceFragment;

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
    iget-object v0, p0, LFo;->a:Lcom/yik/yak/ui/fragment/PreferenceFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->a(Lcom/yik/yak/ui/fragment/PreferenceFragment;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
