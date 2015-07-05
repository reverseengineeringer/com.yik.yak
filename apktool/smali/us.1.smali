.class Lus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc;


# instance fields
.field final synthetic a:Luq;


# direct methods
.method private constructor <init>(Luq;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lus;->a:Luq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luq;Lur;)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0, p1}, Lus;-><init>(Luq;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lus;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lus;->a:Luq;

    invoke-static {v1}, Luq;->a(Luq;)Luv;

    move-result-object v1

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 719
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lus;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 697
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    iget-object v1, p0, Lus;->a:Luq;

    invoke-static {v1}, Luq;->a(Luq;)Luv;

    move-result-object v1

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 699
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lus;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lus;->a:Luq;

    invoke-static {v1}, Luq;->a(Luq;)Luv;

    move-result-object v1

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 725
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lus;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 704
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 705
    iget-object v1, p0, Lus;->a:Luq;

    invoke-static {v1}, Luq;->a(Luq;)Luv;

    move-result-object v1

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 706
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lus;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 711
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 712
    iget-object v1, p0, Lus;->a:Luq;

    invoke-static {v1}, Luq;->a(Luq;)Luv;

    move-result-object v1

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 713
    return-void
.end method
