.class LIB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Z

.field final synthetic c:LIA;


# direct methods
.method constructor <init>(LIA;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, LIB;->c:LIA;

    iput-object p2, p0, LIB;->a:Ljava/lang/Object;

    iput-boolean p3, p0, LIB;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, LIB;->c:LIA;

    iget-object v0, v0, LIA;->c:LII;

    iget-object v1, p0, LIB;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, LII;->a(Ljava/lang/Object;)V

    .line 35
    iget-boolean v0, p0, LIB;->b:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, LIB;->c:LIA;

    iget-object v0, v0, LIA;->c:LII;

    invoke-interface {v0}, LII;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    iget-object v1, p0, LIB;->c:LIA;

    iget-object v1, v1, LIA;->a:Landroid/content/Context;

    const-string v2, "Failed to record event."

    invoke-static {v1, v2, v0}, LHw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
