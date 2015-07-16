.class Laa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Laa;->a:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Laa;->b:Z

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Laa;->a:Ljava/lang/String;

    invoke-static {v0}, LIe;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laa;->b:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2}, Laa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    iget-boolean v0, p0, Laa;->b:Z

    if-nez v0, :cond_1

    .line 61
    invoke-static {}, LHA;->g()LHM;

    .line 63
    :cond_1
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    return-object v0
.end method
