.class final LuY;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:LuP;


# direct methods
.method constructor <init>(LuP;)V
    .locals 0

    iput-object p1, p0, LuY;->a:LuP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, LuY;->a:LuP;

    iget-boolean v0, v0, LuP;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LuY;->a:LuP;

    invoke-virtual {v0}, LuP;->b()V

    :cond_0
    return-void
.end method
