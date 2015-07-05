.class LDi;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:LDh;


# direct methods
.method constructor <init>(LDh;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, LDi;->a:LDh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, LDi;->a:LDh;

    invoke-virtual {v0}, LDh;->j()V

    .line 67
    return-void
.end method
