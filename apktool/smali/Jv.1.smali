.class public LJv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:LJr;


# direct methods
.method public constructor <init>(Landroid/content/Context;LJr;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LJv;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, LJv;->b:LJr;

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, LJv;->a:Landroid/content/Context;

    const-string v1, "Performing time based file roll over."

    invoke-static {v0, v1}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, LJv;->b:LJr;

    invoke-interface {v0}, LJr;->e()Z

    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, LJv;->b:LJr;

    invoke-interface {v0}, LJr;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, LJv;->a:Landroid/content/Context;

    const-string v2, "Failed to roll over file"

    invoke-static {v1, v2, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
