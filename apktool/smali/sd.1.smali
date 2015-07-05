.class Lsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LsK;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsc;


# direct methods
.method constructor <init>(Lsc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lsd;->b:Lsc;

    iput-object p2, p0, Lsd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 2

    .prologue
    .line 345
    sget-boolean v0, LsD;->a:Z

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using existing pushId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()LsL;

    move-result-object v0

    iget-object v1, p0, Lsd;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LsL;->a(Ljava/lang/String;)V

    .line 349
    return-void
.end method
